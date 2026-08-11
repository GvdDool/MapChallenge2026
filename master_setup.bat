@echo off
setlocal

echo ============================================================
echo           MASTER REPOSITORY ^& WORKSPACE SETUP
echo ============================================================
echo.

echo [1/4] Creating folder structure...
if not exist docs mkdir docs
if not exist src mkdir src
if not exist src\importer mkdir src\importer
if not exist src\ui mkdir src\ui
if not exist src\utils mkdir src\utils
if not exist outputs mkdir outputs
if not exist outputs\logs mkdir outputs\logs
if not exist outputs\weekly_lists mkdir outputs\weekly_lists
if not exist tests mkdir tests
if not exist tests\sample_backups mkdir tests\sample_backups
if not exist configs mkdir configs
if not exist data mkdir data
if not exist notebooks mkdir notebooks
if not exist scripts mkdir scripts
echo   - Folders created.

echo [2/4] Creating README.md files...
if not exist README.md (
    (
        echo # Project Name
        echo.
        echo ## Purpose
        echo This repository follows a standardized structure for experiments, projects, or research work.
        echo It is designed to separate code, documentation, outputs, tests, and optional add-ons for clarity and maintainability.
        echo.
        echo ## Folder Structure
        echo - docs/                 Documentation, specs, architecture
        echo - src/                  Source code
        echo - src/importer/         Backup parsing or core logic
        echo - src/ui/               Streamlit or other UI code
        echo - src/utils/            Shared helper functions
        echo - outputs/              Generated files, logs, weekly outputs
        echo - outputs/logs/         Logs
        echo - outputs/weekly_lists/ Weekly follow-up lists or exports
        echo - tests/                Unit tests or sample backup tests
        echo - tests/sample_backups/ Example input files
        echo - configs/              Configuration files ^(optional^)
        echo - data/                 Sample datasets ^(optional^)
        echo - notebooks/            Jupyter notebooks ^(optional^)
        echo - scripts/              Helper or CLI scripts ^(optional^)
        echo.
        echo ## Notes
        echo - Folder-specific README.md files should be maintained manually as the project evolves.
        echo - The repository is ready for GitHub Desktop or any Git workflow.
    ) > README.md
    echo   - Created master README.md
)

echo [3/4] Setting up .vscode Workspace (High-Isolation)...
if not exist ".vscode" mkdir .vscode
(
    echo {
    echo     "python.defaultInterpreterPath": "D:\\GeoSpatial\\anaconda3\\envs\\geo_env_20250322\\python.exe",
    echo     "python.languageServer": "Jedi",
    echo     "python.analysis.extraPaths": [
    echo         "./src"
    echo     ],
    echo     "python.autoComplete.extraPaths": [
    echo         "./src"
    echo     ],
    echo     "python.experiments.optOutFrom": [
    echo         "pythonDiscoveryUsingWorkers",
    echo         "pythonTestAdapter",
    echo         "pythonTerminalEnvVarActivation"
    echo     ],
    echo     "python.locator": "js",
    echo     "python.useEnvironmentsExtension": false,
    echo     "terminal.integrated.env.windows": {
    echo         "PATH": "D:\\GeoSpatial\\anaconda3;D:\\GeoSpatial\\anaconda3\\Scripts;D:\\GeoSpatial\\anaconda3\\Library\\bin;D:\\GeoSpatial\\anaconda3\\condabin;${env:PATH}",
    echo         "PYTHONPATH": "${workspaceFolder};${workspaceFolder}/src"
    echo     }
    echo }
) > .vscode\settings.json
echo   - Configured .vscode/settings.json (Jedi + Forced Anaconda)

echo [4/4] Creating/Updating .gitignore...
if not exist .gitignore (
    (
        echo # IDE Settings
        echo .vscode/
        echo .cursor/
        echo.
        echo # Python
        echo __pycache__/
        echo *.pyc
        echo.
        echo # Project Data
        echo *.sqlite
        echo .env
        echo outputs/
        echo data/
        echo notebooks/
        echo configs/
    ) > .gitignore
    echo   - Created .gitignore
) else (
    findstr /C:".vscode/" .gitignore >nul
    if errorlevel 1 (
        echo. >> .gitignore
        echo # IDE Settings >> .gitignore
        echo .vscode/ >> .gitignore
        echo .cursor/ >> .gitignore
        echo   - Added .vscode/ and .cursor/ to .gitignore
    )
)

echo.
echo ============================================================
echo SETUP COMPLETE!
echo 1. Open this folder in Cursor.
echo 2. Your environment is now forced to: geo_env_20250322
echo 3. The stable Jedi server is enabled.
echo ============================================================
pause
