{-# LANGUAGE DeriveGeneric #-}

module CarResponse
  ( CarResponse (..)
  ) where

import Data.Aeson
import Data.UUID.Types

import GHC.Generics

data CarResponse = CarResponse
  { carUid :: UUID
  , available :: Bool
  , brand :: String
  , model :: String
  , power :: Int
  , price :: Int
  , registrationNumber :: String
  , type_ :: String
  } deriving (Generic)

instance ToJSON CarResponse where
  toJSON = genericToJSON defaultOptions
    { fieldLabelModifier = filter (/= '_')
    }
