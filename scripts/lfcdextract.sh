switch (Split-Path $f -leafExtension)
{
        tar.bz -or tar.bz2 -or tbz -or tbz2  {tar xjvf $f}
        tar.gz -or tgz {tar xzvf $f}
        tar.xz -or txz {tar xJvf $f}
        .zip {unzip $f}
        .rar {unrar x $f}
        .7z {7z x $f}
}    
