-- |
-- This module reexports most of the definitions from the \"base\" package,
-- which are meant to be imported unqualified, plus all non-conflicting
-- definitions from the "utility-ht" package.
--
-- When there are conflicts, "base" takes priority, with the following
-- expections:
--
-- * `map`,`for`, `unzip`, `unzip3` : I actually prefer "utility-ht"
--  definition for these functions than the default "base".
--  They apply to functors, and `for` is `flip map`.
--
--
-- For details check out the source.
module BasePreludeHT
( module Exports
, uncons
, unsnoc
)
where

-- Reexports
-------------------------

import BasePrelude as Exports hiding (map,for,unzip,unzip3, inits, tails,span,break,cycle,inRange)
import Control.Functor.HT as Exports hiding (void)
import Control.Monad.HT   as Exports (andLazy, orLazy, iterateLimit)
import Data.Bool.HT       as Exports
import Data.Eq.HT         as Exports
import Data.Function.HT   as Exports hiding (compose2)
-- Missing Data.Ix.Enum
import Data.List.HT       as Exports hiding (groupBy,group,unzip,partition,rotate,range)
-- Missing Data.List.Key and Data.List.Match
import Data.Maybe.HT      as Exports
import Data.Monoid.HT     as Exports (cycle)
import Data.Ord.HT        as Exports hiding (comparing)
import Data.Record.HT     as Exports hiding (compare)
import Data.Strictness.HT as Exports
import Data.String.HT     as Exports
import Data.Tuple.HT      as Exports hiding (swap)
import Text.Read.HT       as Exports
import Text.Show.HT       as Exports


uncons :: [a] -> Maybe (a, [a])
uncons = viewL

unsnoc :: [a] -> Maybe ([a], a)
unsnoc = viewR
