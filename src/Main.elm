module Main exposing (main)

import Browser exposing (Document)
import Html exposing (Html)
import Html.Attributes as Attributes



-- MODEL


type alias Model =
    {}


type alias Flags =
    {}


init : Flags -> ( Model, Cmd Msg )
init _ =
    ( {}, Cmd.none )



-- VIEW


view : Model -> Document Msg
view model =
    { title = "Elm Tailwind Starter"
    , body = [ viewRoot model ]
    }


viewRoot : Model -> Html Msg
viewRoot _ =
    Html.div [ Attributes.class "w-full h-screen flex flex-col items-center justify-center bg-gradient-to-b from-gray-800 to-gray-900 text-white space-y-8" ]
        [ Html.h1 [ Attributes.class "text-6xl" ]
            [ Html.text "Elm Tailwind Starter" ]
        , Html.p [ Attributes.class "text-2xl" ]
            [ Html.text "Edit src/Main.elm and save to reload." ]
        , Html.div [ Attributes.class "flex space-x-4 text-2xl text-indigo-200" ]
            [ Html.a
                [ Attributes.href "https://elm-lang.org/"
                , Attributes.target "_blank"
                ]
                [ Html.text "Learn Elm" ]
            , Html.a
                [ Attributes.href "https://tailwindcss.com/"
                , Attributes.target "_blank"
                ]
                [ Html.text "Learn Tailwind" ]
            ]
        ]



-- UPDATE


type Msg
    = NoOp


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    case msg of
        NoOp ->
            ( model, Cmd.none )



--  SUBSCRIPTIONS


subscriptions : Model -> Sub Msg
subscriptions _ =
    Sub.none


main : Program Flags Model Msg
main =
    Browser.document
        { init = init
        , update = update
        , view = view
        , subscriptions = subscriptions
        }
