-ifndef(PERSON_HRL).
-define(PERSON_HRL, true).

-include("organization.hrl").
-include("branch.hrl").
-include("location.hrl").

% LDAP inetOrgPerson OID=2.16.840.1.113730.3.2.2

-record('Person',      { id          = begin timer:sleep(1), kvs:seq([],[]) end :: [] | term(),
                         cn          = [] :: [] | binary(),
                         name        = [] :: [] | binary(),
                         displayName = [] :: [] | binary(),
                         location    = [] :: #'Loc'{},
                         hours       = 00 :: integer(),
                         type        = [] :: term() }).

-record('PersonCN',    { cn          = [] :: [] | term(),
                         id          = [] :: [] | term() }).

-endif.
