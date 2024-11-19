{-# LANGUAGE DataKinds, TypeOperators #-}

module API
  ( API
  , api
  ) where

import Data.UUID.Types

import Servant

import CreateRentalRequest
import CreateRentalResponse
import PaginationResponse
import RentalResponse

type API = "api" :> "v1" :>
  ( ListCars
  :<|> ListRentals
  :<|> GetRental
  :<|> CreateRental
  :<|> CancelRental
  :<|> FinishRental
  )

type ListCars = "cars"
  :> QueryParam "page" (Maybe Int)
  :> QueryParam "size" (Maybe Int)
  :> QueryParam "showAll" (Maybe Bool)
  :> Verb 'GET 200 '[JSON] PaginationResponse

type ListRentals = "rental"
  :> Header "X-User-Name" String
  :> Verb 'GET 200 '[JSON] [RentalResponse]

type GetRental = "rental"
  :> Header "X-User-Name" String
  :> Capture "rentalUid" UUID
  :> Verb 'GET 200 '[JSON] RentalResponse

type CreateRental = "rental"
  :> Header "X-User-Name" String
  :> Capture "rentalUid" UUID
  :> ReqBody '[JSON] CreateRentalRequest
  :> Verb 'POST 200 '[JSON] CreateRentalResponse

type CancelRental = "rental"
  :> Header "X-User-Name" String
  :> Capture "rentalUid" UUID
  :> Verb 'DELETE 204 '[JSON] NoContent

type FinishRental = "rental"
  :> Header "X-User-Name" String
  :> Capture "rentalUid" UUID
  :> "finish"
  :> Verb 'POST 204 '[JSON] NoContent

api :: Proxy API
api = Proxy
