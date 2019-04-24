{-# OPTIONS_GHC -fno-warn-missing-import-lists #-}
{-# OPTIONS_GHC -fno-warn-implicit-prelude #-}
module Paths_JavaComp (
    version,
    getBinDir, getLibDir, getDynLibDir, getDataDir, getLibexecDir,
    getDataFileName, getSysconfDir
  ) where

import qualified Control.Exception as Exception
import Data.Version (Version(..))
import System.Environment (getEnv)
import Prelude

catchIO :: IO a -> (Exception.IOException -> IO a) -> IO a
catchIO = Exception.catch

version :: Version
version = Version [0,1,0,0] []
bindir, libdir, dynlibdir, datadir, libexecdir, sysconfdir :: FilePath

bindir     = "/Users/kucera/.etlas/bin"
libdir     = "/Users/kucera/.etlas/lib/eta-0.8.6.5/JavaComp-0.1.0.0-inplace-JavaComp"
dynlibdir  = "/Users/kucera/.etlas/lib/eta-0.8.6.5"
datadir    = "/Users/kucera/.etlas/share/eta-0.8.6.5/JavaComp-0.1.0.0"
libexecdir = "/Users/kucera/.etlas/libexec"
sysconfdir = "/Users/kucera/.etlas/etc"

getBinDir, getLibDir, getDynLibDir, getDataDir, getLibexecDir, getSysconfDir :: IO FilePath
getBinDir = catchIO (getEnv "JavaComp_bindir") (\_ -> return bindir)
getLibDir = catchIO (getEnv "JavaComp_libdir") (\_ -> return libdir)
getDynLibDir = catchIO (getEnv "JavaComp_dynlibdir") (\_ -> return dynlibdir)
getDataDir = catchIO (getEnv "JavaComp_datadir") (\_ -> return datadir)
getLibexecDir = catchIO (getEnv "JavaComp_libexecdir") (\_ -> return libexecdir)
getSysconfDir = catchIO (getEnv "JavaComp_sysconfdir") (\_ -> return sysconfdir)

getDataFileName :: FilePath -> IO FilePath
getDataFileName name = do
  dir <- getDataDir
  return (dir ++ "/" ++ name)
