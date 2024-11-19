{-# LANGUAGE DeriveGeneric #-}

module RentalResponse
  ( RentalResponse (..)
  ) where

import Data.Aeson
import Data.Time.Calendar
import Data.UUID.Types

import GHC.Generics

import CarInfo
import PaymentInfo

data RentalResponse = RentalResponse
  { rentalUid :: UUID
  , car :: CarInfo
  , dateFrom :: Day
  , dateTo :: Day
  , payment :: PaymentInfo
  , status :: String
  } deriving (Generic)

instance ToJSON RentalResponse
