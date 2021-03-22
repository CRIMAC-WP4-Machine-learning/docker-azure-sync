# SIMPLE AZURE FILE SHARE ACCESS USING SHARED ACCESS SIGNATURE (SAS)

Using technique and script available here: https://github.com/microsoft/AzureFilesFUSE

## Requirements

The host system must have the `fuse` kernel module loaded.

**Usage example:**

```bash
host$ docker run --rm -it \ 
    --device /dev/fuse --cap-add SYS_ADMIN \
    --security-opt label=disable \
    -e ACCOUNT=<Account Name> \
    -e SHARENAME=<Share Name> \ 
    -e SAS=<SAS Token> \
    -v /scratch/data:/data \
    crimac/azure-sync

container$ rsync -r /data /azureshare

```