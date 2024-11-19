{-# LANGUAGE DeriveGeneric #-}

module CreateRentalResponse
  ( CreateRentalResponse (..)
  ) where

import Data.Aeson
import Data.Time.Calendar
import Data.UUID.Types

import GHC.Generics

import PaymentInfo

data CreateRentalResponse = CreateRentalResponse
  { carUid :: UUID
  , rentalUid :: UUID
  , dateFrom :: Day
  , dateTo :: Day
  , payment :: PaymentInfo
  , status :: String
  } deriving (Generic)

instance ToJSON CreateRentalResponse
