/*
 *  Copyright 2011 Rackspace
 *
 *  Licensed under the Apache License, Version 2.0 (the "License");
 *  you may not use this file except in compliance with the License.
 *  You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 *  Unless required by applicable law or agreed to in writing, software
 *  distributed under the License is distributed on an "AS IS" BASIS,
 *  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 *  See the License for the specific language governing permissions and
 *  limitations under the License.
 *
 */

#include "virgo.h"
#include "lua.h"

#include "stdio.h"

#ifndef _virgo__types_h_
#define _virgo__types_h_

struct virgo_conf_t {
  lua_State *L;
};

struct virgo_t {
  lua_State* L;
  virgo_conf_t *config;
  const char *lua_load_path;
  char *lua_default_module;
  int argc;
  char **argv;
  virgo_log_level_e log_level;
  FILE *log_fp;
  const char *log_path;
};



#endif /* _virgo__types_h_ */
