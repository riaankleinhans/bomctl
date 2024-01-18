-- ------------------------------------------------------------------------
-- SPDX-FileCopyrightText: Copyright © 2024 bomctl authors
-- SPDX-FileName: internal/pkg/db/scripts/triggers.sql
-- SPDX-FileType: SOURCE
-- SPDX-License-Identifier: Apache-2.0
-- ------------------------------------------------------------------------
-- Licensed under the Apache License, Version 2.0 (the "License");
-- you may not use this file except in compliance with the License.
-- You may obtain a copy of the License at
--
-- http://www.apache.org/licenses/LICENSE-2.0
--
-- Unless required by applicable law or agreed to in writing, software
-- distributed under the License is distributed on an "AS IS" BASIS,
-- WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
-- See the License for the specific language governing permissions and
-- limitations under the License.
-- ------------------------------------------------------------------------
PRAGMA foreign_keys = ON;

-- @block before update on `metadata` trigger
-- @conn bomctl
-- @label Create before update trigger on `metadata` table
CREATE TRIGGER IF NOT EXISTS tr_metadata_before_update
BEFORE UPDATE ON metadata
BEGIN
    SELECT RAISE(IGNORE);
END;
