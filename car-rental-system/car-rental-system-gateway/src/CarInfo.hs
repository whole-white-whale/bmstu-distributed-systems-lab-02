{-# LANGUAGE DeriveGeneric #-}

module CarInfo
  ( CarInfo (..)
  ) where

import Data.Aeson
import Data.UUID.Types

import GHC.Generics

data CarInfo = CarInfo
  { carUid :: UUID
  , brand :: String
  , model :: String
  , registrationNumber :: String
  } deriving (Generic)

instance ToJSON CarInfo
