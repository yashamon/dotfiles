switch (Split-Path $f -leafExtension)
{
        tar.bz |tar.bz2|tbz|tbz2  {tar xjvf $f}
        tar.gz|tgz tar {xzvf $f}
        tar.xz|txz tar {xJvf $f}
        .zip {unzip $f}
        .rar {unrar x $f}
        .7z {7z x $f}
}    
