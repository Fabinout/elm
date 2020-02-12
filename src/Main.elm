module Main exposing (..)
-- Press buttons to increment and decrement a counter.
--
-- Read how it works:
--   https://guide.elm-lang.org/architecture/buttons.html
--


import Browser
import Html exposing (Html, div, input, text)
import Html.Attributes exposing (placeholder, value)
import Html.Events exposing (onInput)



-- MAIN


main =
  Browser.sandbox { init = init, update = update, view = view }



-- MODEL

type alias Model =
  { content : String
  }


init : Model
init =
  { content = "kljqsdfmjk" }


-- UPDATE


type Msg
  = Change String

update : Msg -> Model -> Model
update msg model =
  case msg of
      Change string ->
        { model | content = string }


-- VIEW


view : Model -> Html Msg
view model =
  div []
    [ input [placeholder "texte à inverser", value model.content, onInput Change]  []
    ,
    div [] [text (String.reverse model.content)]
    ]
