### Container for S3FS

https://github.com/s3fs-fuse/s3fs-fuse

Latest release

```bash
curl -s https://api.github.com/repos/s3fs-fuse/s3fs-fuse/releases/latest |grep tag_name | cut -d '"' -f 4 | tr -d 'v'
```

Tag latest by date

```bash
TAG=v$(date -u +'%Y%m%d').1
git tag -a $TAG
git push origin $TAG
```