module Hasql.DynamicStatements.Session where

import Hasql.DynamicStatements.Prelude
import Hasql.Session
import qualified Hasql.DynamicStatements.Snippet.Defs as SnippetDefs
import qualified Hasql.DynamicStatements.Statement as Statement
import qualified Hasql.Decoders as Decoders
import qualified Hasql.Session as Session

{-|
Execute a dynamically parameterized statement, providing a result decoder.

This is merely a shortcut, which immediately embeds
@Hasql.DynamicStatements.Statement.'Statement.dynamicallyParameterized'@
in @Session@.
For details see the docs on that function.
-}
dynamicallyParameterizedStatement :: SnippetDefs.Snippet -> Decoders.Result result -> Session result
dynamicallyParameterizedStatement snippet decoder = Session.statement () (Statement.dynamicallyParameterized snippet decoder)
