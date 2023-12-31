# Generalizable Deep Learning Method for Suppressing Unseen and Multiple MRI Artifacts Using Meta-learning

## Meta-learning based MRI artifact image restoration.

![One_row_abstract](https://github.com/pallaarun/CMAML/assets/58825985/0e38c45f-d69e-4199-a9d6-4f74e47d4da9)

# Dependencies
## Packages
* Pytorch
* Numpy

Following command installs the entire python packages mentioned in the _requirements.txt_

```
conda create --name <env> --file requirements.txt
```

# Train command
```
sh train.sh
```

# Validation command for unseen artifacts
```
sh valid_unseen_tasks.sh
```

# Measure PSNR (db) and SSIM scores
```
sh evaluate_unseen_tasks.sh
```

# Display PSNR (db) ans SSIM scores
```
sh report_metrics.sh
```
