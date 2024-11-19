{-# LANGUAGE DeriveGeneric #-}

module CreateRentalRequest
  ( CreateRentalRequest (..)
  ) where

import Data.Aeson
import Data.Time.Calendar
import Data.UUID.Types

import GHC.Generics

data CreateRentalRequest = CreateRentalRequest
  { carUid :: UUID
  , dateFrom :: Day
  , dateTo :: Day
  } deriving (Generic)

instance FromJSON CreateRentalRequest
