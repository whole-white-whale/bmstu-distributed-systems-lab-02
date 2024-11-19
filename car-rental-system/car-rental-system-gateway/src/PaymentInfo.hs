{-# LANGUAGE DeriveGeneric #-}

module PaymentInfo
  ( PaymentInfo (..)
  ) where

import Data.Aeson
import Data.UUID.Types

import GHC.Generics

data PaymentInfo = PaymentInfo
  { paymentUid :: UUID
  , price :: Int
  , status :: String
  } deriving (Generic)

instance ToJSON PaymentInfo
