{-# LANGUAGE DeriveGeneric #-}

module ErrorDescription
  ( ErrorDescription (..)
  ) where

import Data.Aeson
import GHC.Generics

data ErrorDescription = ErrorDescription
  { error :: String
  , field :: String
  } deriving (Generic)

instance ToJSON ErrorDescription
