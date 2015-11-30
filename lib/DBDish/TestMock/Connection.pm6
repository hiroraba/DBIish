
use v6;

use DBDish::Role::Connection;

need DBDish::TestMock::StatementHandle;

unit class DBDish::TestMock::Connection does DBDish::Role::Connection;

method prepare($) { DBDish::TestMock::StatementHandle.new }
method disconnect { True }
