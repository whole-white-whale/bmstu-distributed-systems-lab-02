{-# LANGUAGE DeriveGeneric #-}

module PaginationResponse
  ( PaginationResponse (..)
  ) where

import Data.Aeson
import GHC.Generics

import CarResponse

data PaginationResponse = PaginationResponse
  { items :: [CarResponse]
  , page :: Int
  , pageSize :: Int
  , totalElements :: Int
  } deriving (Generic)

instance ToJSON PaginationResponse
