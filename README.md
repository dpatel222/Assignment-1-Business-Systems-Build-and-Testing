First clone the git repo then do the following commands where you have cloned the repo


# Build image
```
docker build . -t "patel_deep_coding_assignment_11:v1.0"
```



# Run application
```
docker run --name patel_deep_coding_assignmen__t11 -dp 7775:7775 patel_deep_coding_assignment_11:v1.0
```
