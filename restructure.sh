#!/usr/bin/env bash
# Run this INSIDE your local clone of EV-Market-Analysis
# (the folder containing .git). It reorganizes the repo into a clean
# structure using `git mv` so file history is preserved.
set -e

mkdir -p data tableau assets/screenshots

git mv "Electric_Vehicle_Population_Data.csv.gz" "data/electric_vehicle_population_data.csv.gz"
git mv "EV Data Analysis.twb" "tableau/ev_market_analysis.twb"
git mv "EV Data Analysis Tableau.png" "assets/screenshots/dashboard_overview.png"

# Add README, LICENSE and .gitignore
# (download README.md, LICENSE, .gitignore from the chat and place them
#  in the repo root before running this script, or copy them in now)

echo "Done. Now review with 'git status', then:"
echo "  git add -A"
echo "  git commit -m \"Restructure repo, add README, LICENSE, and .gitignore\""
echo "  git push"
