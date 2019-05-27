{-# LANGUAGE ExplicitNamespaces #-}

module Data.Functor.Combinator (
  -- ** Single Functors
    type (~>)
  , HFunctor(..)
  , Interpret(..), interpretFor
  , extractI, getI, collectI
  -- ** Multi-Functors
  , HBifunctor(..)
  , Tensor(I)
  , Monoidal(TM, retractT, interpretT, pureT, toTM)
  , inL, inR
  , (!$!)
  , extractT, getT, (!*!), collectT
  -- * Combinators
  , Coyoneda(..)
  , ListF(..)
  , NonEmptyF(..)
  , MaybeF(..)
  , Ap
  , Ap1
  , Alt
  , Free
  , Step(..)
  , Steps(..)
  , Day(..)
  , (:*:)(..)
  , (:+:)(..)
  , These1(..)
  , Comp(Comp, unComp)
  , Final(..)
  , FreeOf(..)
  ) where

import           Control.Alternative.Free
import           Control.Applicative.Free
import           Control.Applicative.ListF
import           Control.Applicative.Step
import           Control.Monad.Freer.Church
import           Control.Natural
import           Data.Functor.Apply.Free
import           Data.Functor.Coyoneda
import           Data.Functor.Day
import           Data.Functor.HFunctor
import           Data.Functor.HFunctor.Final
import           Data.Functor.Tensor
import           Data.Functor.These
import           GHC.Generics
