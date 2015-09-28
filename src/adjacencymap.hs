module AdjacencyMap (
      AdjacencyMap
    , AdjacencyMap.empty
    , insert
    , (!)
    ) where

import Edgeset
import Point

import qualified Data.Map as M

newtype AdjacencyMap = AdjacencyMap (M.Map Point Edgeset)

empty :: AdjacencyMap
empty = AdjacencyMap M.empty

insert :: Point -> Edgeset -> AdjacencyMap -> AdjacencyMap
insert point edges (AdjacencyMap m) = AdjacencyMap $ M.insert point edges m

(!) :: AdjacencyMap -> Point -> Edgeset
(!) (AdjacencyMap m) point = m M.! point