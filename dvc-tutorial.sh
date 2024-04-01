# Download DVC sample data from their GitHub repo
dvc get https://github.com/iterative/dataset-registry tutorials/versioning/data.zip
unzip -q data.zip
rm -f data.zip

# Initialise DVC and add data file to DVC tracking
dvc init
dvc add data

# Commit the changes
git add .gitignore data.dvc
git commit -m "Initial data with 1000 training images"
git tag -a "v1.0" -m "Training dataset with 1000 images"

# Download updated sample data from DVC's GitHub repo and add the updated data to DVC tracking
dvc get https://github.com/iterative/dataset-registry tutorials/versioning/new-labels.zip
unzip -q new-labels.zip
rm -f new-labels.zip
dvc add data

# Commit the changes
git add data.dvc
git commit -m "Updated data with 2000 training images"
git tag -a "v2.0" -m "Training dataset with 2000 images"

# Revert to initial dataset (1000 images for training)
git checkout v1.0
dvc checkout # training data folder should now contains only 1000 images
