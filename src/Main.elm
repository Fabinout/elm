module Main exposing (..)
-- Press buttons to increment and decrement a counter.
--
-- Read how it works:
--   https://guide.elm-lang.org/architecture/buttons.html
--


import Browser
import Html exposing (Html, div, button, text)
import Html.Attributes exposing (placeholder, value)
import Html.Events exposing (onClick)



-- MAIN


main =
  Browser.sandbox { init = init, update = update, view = view }


-- MODEL

type alias Model = { money : Int, time : Int }

init : Model
init =
    { money = 0, time = 0 }






-- UPDATE


type Msg
  = IncrementMoney


update : Msg -> Model -> Model
update msg model =
  case msg of
      IncrementMoney ->
        {  model|money = model.money + 1, time = 0}


-- VIEW

view : Model -> Html Msg
view model =
  div []
    [
    div [] [ text ( (String.fromInt model.money ) ++ " €")]
    , button [ onClick IncrementMoney ] [ text "Travail (1€)" ]
    ]