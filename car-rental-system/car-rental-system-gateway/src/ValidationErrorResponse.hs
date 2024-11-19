{-# LANGUAGE DeriveGeneric #-}

module ValidationErrorResponse
  ( ValidationErrorResponse (..)
  ) where

import Data.Aeson
import GHC.Generics

import ErrorDescription

data ValidationErrorResponse = ValidationErrorResponse
  { errors :: [ErrorDescription]
  , message :: String
  } deriving (Generic)

instance ToJSON ValidationErrorResponse
