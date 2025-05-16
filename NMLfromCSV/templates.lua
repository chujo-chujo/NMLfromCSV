local templates = {}

templates.header = [[grf {
    grfid: "EDIT_GRFID";
    name: string(STR_GRF_NAME);
    desc: string(STR_GRF_DESC);
    url:  string(STR_GRF_URL);
    version: EDIT_VERSION;
    min_compatible_version: EDIT_COMPATIBLE_VERSION;
    param 0 {
        param_remove {
            name:      string(STR_PAR_REMOVE_NAME);
            desc:      string(STR_PAR_REMOVE_DESC);
            type:      bool;
            def_value: 0;
        }
    }
}

/////////////////
//  TEMPLATES  //
/////////////////
template tmpl_1x1_menu(x, height) {[x, 0, 64, height, -31, -(height-30)]}
template tmpl_1x1(x, height)      {[x, 0, 64, height, -31, -(height-31)]}

template tmpl_1x2_menu(x, height) {[x, 0, 96, height, -47, -(height-30)]}
template tmpl_1x2_T1(x, height)   {[x+0, 0, 32, height, -31, -(height-47)]}
template tmpl_1x2_T2(x, height)   {[x+32, 0, 64, height, -31, -(height-31)]}

template tmpl_2x1_menu(x, height) {[x, 0, 96, height, -47, -(height-30)]}
template tmpl_2x1_T1(x, height)   {[x+0, 0, 64, height, -31, -(height-31)]}
template tmpl_2x1_T2(x, height)   {[x+64, 0, 32, height, 1, -(height-47)]}

template tmpl_2x2_4views_menu(x, height) {[x, 0, 128, height, -63, -(height-45)]}
template tmpl_2x2_4views_T1(x, height)   {[x+0,   0, 32, height, -31, -(height-47)]}
template tmpl_2x2_4views_T2(x, height)   {[x+32, height-63, 64, 63,  -31,  -32]}
template tmpl_2x2_4views_T3(x, height)   {[x+96, 0, 32, height,   1, -(height-47)]}
template tmpl_2x2_4views_T4(x, height)   {[x+32, 0, 64, height-63, -31, -(height-63)]}

template tmpl_3x1_menu(x, height) {[x, 0, 128, height, -63, -(height-30)]}
template tmpl_3x1_T1(x, height)   {[x, 0, 64, height, -31, -(height-31)]}
template tmpl_3x1_T2(x, height)   {[x+64, 0, 32, height, 1, -(height-47)]}
template tmpl_3x1_T3(x, height)   {[x+96, 0, 32, height, 1, -(height-63)]}

template tmpl_1x3_menu(x, height) {[x, 0, 128, height, -63, -(height-30)]}
template tmpl_1x3_T1(x, height)   {[x, 0, 32, height, -31, -(height-63)]}
template tmpl_1x3_T2(x, height)   {[x+32, 0, 32, height, -31, -(height-47)]}
template tmpl_1x3_T3(x, height)   {[x+64, 0, 64, height, -31, -(height-31)]}

template tmpl_3x2_menu(x, height) {[x, 0, 128, height, -63, -(height-45)]}
template tmpl_3x2_T0(x, height)   {[x+64, 0, 64, height-63, -31, -(height-79)]}
template tmpl_3x2_T1(x, height)   {[x, 0, 32, height, -31, -(height-47)]}
template tmpl_3x2_T2(x, height)   {[x+32, 0, 64, height, -31, -(height-31)]}
template tmpl_3x2_T3(x, height)   {[x+96, 0, 32, height, 1, -(height-47)]}
template tmpl_3x2_T4(x, height)   {[x+128, 0, 32, height, 1, -(height-63)]}
  
template tmpl_2x3_menu(x, height) {[x, 0, 128, height, -63, -(height-45)]}
template tmpl_2x3_T0(x, height)   {[x+32, 0, 64, height-63, -31, -(height-79)]}
template tmpl_2x3_T1(x, height)   {[x, 0, 32, height, -31, -(height-63)]}
template tmpl_2x3_T2(x, height)   {[x+32, 0, 32, height, -31, -(height-47)]}
template tmpl_2x3_T3(x, height)   {[x+64, 0, 64, height, -31, -(height-31)]}
template tmpl_2x3_T4(x, height)   {[x+128, 0, 32, height, 1, -(height-47)]}

template tmpl_3x3_menu(x, height) {[x, 0, 192, height, -95, -(height-45)]}
template tmpl_3x3_T0(x, height)   {[x+64, 0, 64, height-63, -31, -(height-95)]}
template tmpl_3x3_T1(x, height)   {[x, 0, 32, height, -31, -(height-63)]}
template tmpl_3x3_T2(x, height)   {[x+32, 0, 32, height, -31, -(height-47)]}
template tmpl_3x3_T3(x, height)   {[x+64, 0, 64, height, -31, -(height-31)]}
template tmpl_3x3_T4(x, height)   {[x+128, 0, 32, height, 1, -(height-47)]}
template tmpl_3x3_T5(x, height)   {[x+160, 0, 32, height, 1, -(height-63)]}

// Ground
spriteset (spriteset_ground, ZOOM_LEVEL_NORMAL, BIT_DEPTH_32BPP, "gfx/ground.png") {tmpl_1x1(0, 31)}
spriteset (spriteset_empty, ZOOM_LEVEL_NORMAL, BIT_DEPTH_32BPP, "gfx/ground.png") {[0, 0, 1, 1, 0, 0]}
spritelayout layout_ground {ground { sprite: spriteset_ground(); } }



///////////////
//  OBJECTS  //
///////////////
]]

templates.lang = [[##grflangid 0x01

# General GRF strings
STR_GRF_NAME: EDIT_NEWGRF_NAME
STR_GRF_DESC: EDIT_NEWGRF_DESC
STR_GRF_URL: EDIT_NEWGRF_URL

# Parameters
STR_PAR_REMOVE_NAME: Remove only by demolishing
STR_PAR_REMOVE_DESC: {GOLD}If enabled, only the demolish tool can be used to remove an object.

]]

templates.template_1x1_1views = [[
// EDIT_FILENAME
spriteset (spriteset_EDIT_FILENAME_a_menu, ZOOM_LEVEL_NORMAL, BIT_DEPTH_32BPP, "gfx/EDIT_FILENAME.png") {tmpl_1x1_menu(0, EDIT_HEIGHT)}
spriteset (spriteset_EDIT_FILENAME_a, ZOOM_LEVEL_NORMAL, BIT_DEPTH_32BPP, "gfx/EDIT_FILENAME.png") {tmpl_1x1(0, EDIT_HEIGHT)}

spritelayout layout_EDIT_FILENAME_a {
    ground { sprite: spriteset_ground(); }
    building {
        sprite: spriteset_EDIT_FILENAME_a();
        zextent: 200;
    }
}

spritelayout layout_EDIT_FILENAME_a_menu {
    ground { sprite: spriteset_empty(); }
    building { sprite: spriteset_EDIT_FILENAME_a_menu(); }
}

switch (FEAT_OBJECTS, SELF, switch_EDIT_FILENAME_views, [view]) {
    0: layout_EDIT_FILENAME_a;
}
switch (FEAT_OBJECTS, SELF, switch_EDIT_FILENAME_menu, [view]) {
    0: layout_EDIT_FILENAME_a_menu; 
}


item (FEAT_OBJECTS, object_EDIT_FILENAME) {
    property {
        class:                  "EDIT_CLASS";
        classname:              string(STR_EDIT_CLASS);
        name:                   string(STR_OBJ_EDIT_FILENAME);
        climates_available:     ALL_CLIMATES;
        size:                   [1,1];
        build_cost_multiplier:  8;
        remove_cost_multiplier: 8;
        introduction_date:      0x00000000;
        end_of_life_date:       0xFFFFFFFF;
        object_flags:           param_remove == 0 ? bitmask(OBJ_FLAG_ANYTHING_REMOVE) : bitmask();
        height:                 8;
        num_views:              1;
    }
    graphics {
        default:         switch_EDIT_FILENAME_views;
        purchase:        switch_EDIT_FILENAME_menu;
    }
}]]

templates.template_1x1_2views = [[
// EDIT_FILENAME
spriteset (spriteset_EDIT_FILENAME_a_menu, ZOOM_LEVEL_NORMAL, BIT_DEPTH_32BPP, "gfx/EDIT_FILENAME.png") {tmpl_1x1_menu(0, EDIT_HEIGHT)}
spriteset (spriteset_EDIT_FILENAME_b_menu, ZOOM_LEVEL_NORMAL, BIT_DEPTH_32BPP, "gfx/EDIT_FILENAME.png") {tmpl_1x1_menu(69, EDIT_HEIGHT)}
spriteset (spriteset_EDIT_FILENAME_a, ZOOM_LEVEL_NORMAL, BIT_DEPTH_32BPP, "gfx/EDIT_FILENAME.png") {tmpl_1x1(0, EDIT_HEIGHT)}
spriteset (spriteset_EDIT_FILENAME_b, ZOOM_LEVEL_NORMAL, BIT_DEPTH_32BPP, "gfx/EDIT_FILENAME.png") {tmpl_1x1(69, EDIT_HEIGHT)}

spritelayout layout_EDIT_FILENAME_a {
    ground { sprite: spriteset_ground(); }
    building {
        sprite: spriteset_EDIT_FILENAME_a();
        zextent: 200;
    }
}
spritelayout layout_EDIT_FILENAME_b {
    ground { sprite: spriteset_ground(); }
    building {
        sprite: spriteset_EDIT_FILENAME_b();
        zextent: 200;
    }
}

spritelayout layout_EDIT_FILENAME_a_menu {
    ground { sprite: spriteset_empty(); }
    building { sprite: spriteset_EDIT_FILENAME_a_menu(); }
}
spritelayout layout_EDIT_FILENAME_b_menu {
    ground { sprite: spriteset_empty(); }
    building { sprite: spriteset_EDIT_FILENAME_b_menu(); }
}

switch (FEAT_OBJECTS, SELF, switch_EDIT_FILENAME_views, [view]) {
    0: layout_EDIT_FILENAME_a;
    1: layout_EDIT_FILENAME_b;
}
switch (FEAT_OBJECTS, SELF, switch_EDIT_FILENAME_menu, [view]) {
    0: layout_EDIT_FILENAME_a_menu;   
    1: layout_EDIT_FILENAME_b_menu;
}


item (FEAT_OBJECTS, object_EDIT_FILENAME) {
    property {
        class:                  "EDIT_CLASS";
        classname:              string(STR_EDIT_CLASS);
        name:                   string(STR_OBJ_EDIT_FILENAME);
        climates_available:     ALL_CLIMATES;
        size:                   [1,1];
        build_cost_multiplier:  8;
        remove_cost_multiplier: 8;
        introduction_date:      0x00000000;
        end_of_life_date:       0xFFFFFFFF;
        object_flags:           param_remove == 0 ? bitmask(OBJ_FLAG_ANYTHING_REMOVE) : bitmask();
        height:                 8;
        num_views:              2;
    }
    graphics {
        default:         switch_EDIT_FILENAME_views;
        purchase:        switch_EDIT_FILENAME_menu;
    }
}]]

templates.template_1x1_4views = [[
// EDIT_FILENAME
spriteset (spriteset_EDIT_FILENAME_a_menu, ZOOM_LEVEL_NORMAL, BIT_DEPTH_32BPP, "gfx/EDIT_FILENAME.png") {tmpl_1x1_menu(0, EDIT_HEIGHT)}
spriteset (spriteset_EDIT_FILENAME_b_menu, ZOOM_LEVEL_NORMAL, BIT_DEPTH_32BPP, "gfx/EDIT_FILENAME.png") {tmpl_1x1_menu(69, EDIT_HEIGHT)}
spriteset (spriteset_EDIT_FILENAME_c_menu, ZOOM_LEVEL_NORMAL, BIT_DEPTH_32BPP, "gfx/EDIT_FILENAME.png") {tmpl_1x1_menu(138, EDIT_HEIGHT)}
spriteset (spriteset_EDIT_FILENAME_d_menu, ZOOM_LEVEL_NORMAL, BIT_DEPTH_32BPP, "gfx/EDIT_FILENAME.png") {tmpl_1x1_menu(207, EDIT_HEIGHT)}
spriteset (spriteset_EDIT_FILENAME_a, ZOOM_LEVEL_NORMAL, BIT_DEPTH_32BPP, "gfx/EDIT_FILENAME.png") {tmpl_1x1(0, EDIT_HEIGHT)}
spriteset (spriteset_EDIT_FILENAME_b, ZOOM_LEVEL_NORMAL, BIT_DEPTH_32BPP, "gfx/EDIT_FILENAME.png") {tmpl_1x1(69, EDIT_HEIGHT)}
spriteset (spriteset_EDIT_FILENAME_c, ZOOM_LEVEL_NORMAL, BIT_DEPTH_32BPP, "gfx/EDIT_FILENAME.png") {tmpl_1x1(138, EDIT_HEIGHT)}
spriteset (spriteset_EDIT_FILENAME_d, ZOOM_LEVEL_NORMAL, BIT_DEPTH_32BPP, "gfx/EDIT_FILENAME.png") {tmpl_1x1(207, EDIT_HEIGHT)}

spritelayout layout_EDIT_FILENAME_a {
    ground { sprite: spriteset_ground(); }
    building {
        sprite: spriteset_EDIT_FILENAME_a();
        zextent: 200;
    }
}
spritelayout layout_EDIT_FILENAME_b {
    ground { sprite: spriteset_ground(); }
    building {
        sprite: spriteset_EDIT_FILENAME_b();
        zextent: 200;
    }
}
spritelayout layout_EDIT_FILENAME_c {
    ground { sprite: spriteset_ground(); }
    building {
        sprite: spriteset_EDIT_FILENAME_c();
        zextent: 200;
    }
}
spritelayout layout_EDIT_FILENAME_d {
    ground { sprite: spriteset_ground(); }
    building {
        sprite: spriteset_EDIT_FILENAME_d();
        zextent: 200;
    }
}

spritelayout layout_EDIT_FILENAME_a_menu {
    ground { sprite: spriteset_empty(); }
    building { sprite: spriteset_EDIT_FILENAME_a_menu(); }
}
spritelayout layout_EDIT_FILENAME_b_menu {
    ground { sprite: spriteset_empty(); }
    building { sprite: spriteset_EDIT_FILENAME_b_menu(); }
}
spritelayout layout_EDIT_FILENAME_c_menu {
    ground { sprite: spriteset_empty(); }
    building { sprite: spriteset_EDIT_FILENAME_c_menu(); }
}
spritelayout layout_EDIT_FILENAME_d_menu {
    ground { sprite: spriteset_empty(); }
    building { sprite: spriteset_EDIT_FILENAME_d_menu(); }
}

switch (FEAT_OBJECTS, SELF, switch_EDIT_FILENAME_views, [view]) {
    0: layout_EDIT_FILENAME_a;
    1: layout_EDIT_FILENAME_b;
    2: layout_EDIT_FILENAME_c;
    3: layout_EDIT_FILENAME_d;
}
switch (FEAT_OBJECTS, SELF, switch_EDIT_FILENAME_menu, [view]) {
    0: layout_EDIT_FILENAME_a_menu;   
    1: layout_EDIT_FILENAME_b_menu;
    2: layout_EDIT_FILENAME_c_menu;
    3: layout_EDIT_FILENAME_d_menu;
}


item (FEAT_OBJECTS, object_EDIT_FILENAME) {
    property {
        class:                  "EDIT_CLASS";
        classname:              string(STR_EDIT_CLASS);
        name:                   string(STR_OBJ_EDIT_FILENAME);
        climates_available:     ALL_CLIMATES;
        size:                   [1,1];
        build_cost_multiplier:  8;
        remove_cost_multiplier: 8;
        introduction_date:      0x00000000;
        end_of_life_date:       0xFFFFFFFF;
        object_flags:           param_remove == 0 ? bitmask(OBJ_FLAG_ANYTHING_REMOVE) : bitmask();
        height:                 8;
        num_views:              4;
    }
    graphics {
        default:         switch_EDIT_FILENAME_views;
        purchase:        switch_EDIT_FILENAME_menu;
    }
}]]


templates.template_1x2_1views = [[
// EDIT_FILENAME
spriteset (spriteset_EDIT_FILENAME_b_menu, ZOOM_LEVEL_NORMAL, BIT_DEPTH_32BPP, "gfx/EDIT_FILENAME.png") {tmpl_1x2_menu(0, EDIT_HEIGHT)}
spriteset (spriteset_EDIT_FILENAME_b_T1, ZOOM_LEVEL_NORMAL, BIT_DEPTH_32BPP, "gfx/EDIT_FILENAME.png") {tmpl_1x2_T1(0, EDIT_HEIGHT)}
spriteset (spriteset_EDIT_FILENAME_b_T2, ZOOM_LEVEL_NORMAL, BIT_DEPTH_32BPP, "gfx/EDIT_FILENAME.png") {tmpl_1x2_T2(0, EDIT_HEIGHT)}

spritelayout layout_EDIT_FILENAME_b_T1 {
    ground { sprite: spriteset_ground(); }
    building {
        sprite: spriteset_EDIT_FILENAME_b_T1();
        zextent: 200; 
    }
}
spritelayout layout_EDIT_FILENAME_b_T2 {
    ground { sprite: spriteset_ground(); }
    building {
        sprite: spriteset_EDIT_FILENAME_b_T2();
        zextent: 200; 
    }
}

spritelayout layout_EDIT_FILENAME_b_menu {
    ground { sprite: spriteset_empty(); }
    building { sprite: spriteset_EDIT_FILENAME_b_menu(); }
}

switch (FEAT_OBJECTS, SELF, switch_EDIT_FILENAME_b_layout, [relative_pos]) {
    relative_coord(0, 0): layout_EDIT_FILENAME_b_T1;
    relative_coord(0, 1): layout_EDIT_FILENAME_b_T2;
}

switch (FEAT_OBJECTS, SELF, switch_EDIT_FILENAME_views, [view]) {
    0: switch_EDIT_FILENAME_b_layout;
}
switch (FEAT_OBJECTS, SELF, switch_EDIT_FILENAME_menu, [view]) {
    0: layout_EDIT_FILENAME_b_menu;
}

item (FEAT_OBJECTS, object_EDIT_FILENAME) {
    property {
        class:                  "EDIT_CLASS";
        classname:              string(STR_EDIT_CLASS);
        name:                   string(STR_OBJ_EDIT_FILENAME);
        climates_available:     ALL_CLIMATES;
        size:                   [1,2];
        build_cost_multiplier:  8;
        remove_cost_multiplier: 8;
        introduction_date:      0x00000000;
        end_of_life_date:       0xFFFFFFFF;
        object_flags:           param_remove == 0 ? bitmask(OBJ_FLAG_ANYTHING_REMOVE) : bitmask();
        height:                 8;
        num_views:              1;
    }
    graphics {
        default:         switch_EDIT_FILENAME_views;
        purchase:        switch_EDIT_FILENAME_menu;
    }
}]]

templates.template_2x1_1views = [[
// EDIT_FILENAME
spriteset (spriteset_EDIT_FILENAME_a_menu, ZOOM_LEVEL_NORMAL, BIT_DEPTH_32BPP, "gfx/EDIT_FILENAME.png") {tmpl_2x1_menu(0, EDIT_HEIGHT)}
spriteset (spriteset_EDIT_FILENAME_b_menu, ZOOM_LEVEL_NORMAL, BIT_DEPTH_32BPP, "gfx/EDIT_FILENAME.png") {tmpl_1x2_menu(101, EDIT_HEIGHT)}
spriteset (spriteset_EDIT_FILENAME_a_T1, ZOOM_LEVEL_NORMAL, BIT_DEPTH_32BPP, "gfx/EDIT_FILENAME.png") {tmpl_2x1_T1(0, EDIT_HEIGHT)}
spriteset (spriteset_EDIT_FILENAME_a_T2, ZOOM_LEVEL_NORMAL, BIT_DEPTH_32BPP, "gfx/EDIT_FILENAME.png") {tmpl_2x1_T2(0, EDIT_HEIGHT)}
spriteset (spriteset_EDIT_FILENAME_b_T1, ZOOM_LEVEL_NORMAL, BIT_DEPTH_32BPP, "gfx/EDIT_FILENAME.png") {tmpl_1x2_T1(101, EDIT_HEIGHT)}
spriteset (spriteset_EDIT_FILENAME_b_T2, ZOOM_LEVEL_NORMAL, BIT_DEPTH_32BPP, "gfx/EDIT_FILENAME.png") {tmpl_1x2_T2(101, EDIT_HEIGHT)}


spritelayout layout_EDIT_FILENAME_a_T1 {
    ground { sprite: spriteset_ground(); }
    building {
        sprite: spriteset_EDIT_FILENAME_a_T1();
        zextent: 200; 
    }
}
spritelayout layout_EDIT_FILENAME_a_T2 {
    ground { sprite: spriteset_ground(); }
    building {
        sprite: spriteset_EDIT_FILENAME_a_T2();
        zextent: 200; 
    }
}

spritelayout layout_EDIT_FILENAME_a_menu {
    ground { sprite: spriteset_empty(); }
    building { sprite: spriteset_EDIT_FILENAME_a_menu(); }
}

switch (FEAT_OBJECTS, SELF, switch_EDIT_FILENAME_a_layout, [relative_pos]) {
    relative_coord(1, 0): layout_EDIT_FILENAME_a_T1;
    relative_coord(0, 0): layout_EDIT_FILENAME_a_T2;
}

switch (FEAT_OBJECTS, SELF, switch_EDIT_FILENAME_views, [view]) {
    0: switch_EDIT_FILENAME_a_layout;
}
switch (FEAT_OBJECTS, SELF, switch_EDIT_FILENAME_menu, [view]) {
    0: layout_EDIT_FILENAME_a_menu;
}

item (FEAT_OBJECTS, object_EDIT_FILENAME) {
    property {
        class:                  "EDIT_CLASS";
        classname:              string(STR_EDIT_CLASS);
        name:                   string(STR_OBJ_EDIT_FILENAME);
        climates_available:     ALL_CLIMATES;
        size:                   [2,1];
        build_cost_multiplier:  8;
        remove_cost_multiplier: 8;
        introduction_date:      0x00000000;
        end_of_life_date:       0xFFFFFFFF;
        object_flags:           param_remove == 0 ? bitmask(OBJ_FLAG_ANYTHING_REMOVE) : bitmask();
        height:                 8;
        num_views:              1;
    }
    graphics {
        default:         switch_EDIT_FILENAME_views;
        purchase:        switch_EDIT_FILENAME_menu;
    }
}]]

templates.template_2x1_2views = [[
// EDIT_FILENAME
spriteset (spriteset_EDIT_FILENAME_a_menu, ZOOM_LEVEL_NORMAL, BIT_DEPTH_32BPP, "gfx/EDIT_FILENAME.png") {tmpl_2x1_menu(0, EDIT_HEIGHT)}
spriteset (spriteset_EDIT_FILENAME_b_menu, ZOOM_LEVEL_NORMAL, BIT_DEPTH_32BPP, "gfx/EDIT_FILENAME.png") {tmpl_1x2_menu(101, EDIT_HEIGHT)}
spriteset (spriteset_EDIT_FILENAME_a_T1, ZOOM_LEVEL_NORMAL, BIT_DEPTH_32BPP, "gfx/EDIT_FILENAME.png") {tmpl_2x1_T1(0, EDIT_HEIGHT)}
spriteset (spriteset_EDIT_FILENAME_a_T2, ZOOM_LEVEL_NORMAL, BIT_DEPTH_32BPP, "gfx/EDIT_FILENAME.png") {tmpl_2x1_T2(0, EDIT_HEIGHT)}
spriteset (spriteset_EDIT_FILENAME_b_T1, ZOOM_LEVEL_NORMAL, BIT_DEPTH_32BPP, "gfx/EDIT_FILENAME.png") {tmpl_1x2_T1(101, EDIT_HEIGHT)}
spriteset (spriteset_EDIT_FILENAME_b_T2, ZOOM_LEVEL_NORMAL, BIT_DEPTH_32BPP, "gfx/EDIT_FILENAME.png") {tmpl_1x2_T2(101, EDIT_HEIGHT)}


spritelayout layout_EDIT_FILENAME_a_T1 {
    ground { sprite: spriteset_ground(); }
    building {
        sprite: spriteset_EDIT_FILENAME_a_T1();
        zextent: 200; 
    }
}
spritelayout layout_EDIT_FILENAME_a_T2 {
    ground { sprite: spriteset_ground(); }
    building {
        sprite: spriteset_EDIT_FILENAME_a_T2();
        zextent: 200; 
    }
}

spritelayout layout_EDIT_FILENAME_b_T1 {
    ground { sprite: spriteset_ground(); }
    building {
        sprite: spriteset_EDIT_FILENAME_b_T1();
        zextent: 200; 
    }
}
spritelayout layout_EDIT_FILENAME_b_T2 {
    ground { sprite: spriteset_ground(); }
    building {
        sprite: spriteset_EDIT_FILENAME_b_T2();
        zextent: 200; 
    }
}

spritelayout layout_EDIT_FILENAME_a_menu {
    ground { sprite: spriteset_empty(); }
    building { sprite: spriteset_EDIT_FILENAME_a_menu(); }
}
spritelayout layout_EDIT_FILENAME_b_menu {
    ground { sprite: spriteset_empty(); }
    building { sprite: spriteset_EDIT_FILENAME_b_menu(); }
}

switch (FEAT_OBJECTS, SELF, switch_EDIT_FILENAME_a_layout, [relative_pos]) {
    relative_coord(1, 0): layout_EDIT_FILENAME_a_T1;
    relative_coord(0, 0): layout_EDIT_FILENAME_a_T2;
}
switch (FEAT_OBJECTS, SELF, switch_EDIT_FILENAME_b_layout, [relative_pos]) {
    relative_coord(0, 0): layout_EDIT_FILENAME_b_T1;
    relative_coord(0, 1): layout_EDIT_FILENAME_b_T2;
}

switch (FEAT_OBJECTS, SELF, switch_EDIT_FILENAME_views, [view]) {
    0: switch_EDIT_FILENAME_a_layout;
    1: switch_EDIT_FILENAME_b_layout;
}
switch (FEAT_OBJECTS, SELF, switch_EDIT_FILENAME_menu, [view]) {
    0: layout_EDIT_FILENAME_a_menu;   
    1: layout_EDIT_FILENAME_b_menu;
}

item (FEAT_OBJECTS, object_EDIT_FILENAME) {
    property {
        class:                  "EDIT_CLASS";
        classname:              string(STR_EDIT_CLASS);
        name:                   string(STR_OBJ_EDIT_FILENAME);
        climates_available:     ALL_CLIMATES;
        size:                   [2,1];
        build_cost_multiplier:  8;
        remove_cost_multiplier: 8;
        introduction_date:      0x00000000;
        end_of_life_date:       0xFFFFFFFF;
        object_flags:           param_remove == 0 ? bitmask(OBJ_FLAG_ANYTHING_REMOVE) : bitmask();
        height:                 8;
        num_views:              2;
    }
    graphics {
        default:         switch_EDIT_FILENAME_views;
        purchase:        switch_EDIT_FILENAME_menu;
    }
}]]

templates.template_2x1_4views = [[
// EDIT_FILENAME
spriteset (spriteset_EDIT_FILENAME_a_menu, ZOOM_LEVEL_NORMAL, BIT_DEPTH_32BPP, "gfx/EDIT_FILENAME.png") {tmpl_2x1_menu(0, EDIT_HEIGHT)}
spriteset (spriteset_EDIT_FILENAME_b_menu, ZOOM_LEVEL_NORMAL, BIT_DEPTH_32BPP, "gfx/EDIT_FILENAME.png") {tmpl_1x2_menu(101, EDIT_HEIGHT)}
spriteset (spriteset_EDIT_FILENAME_c_menu, ZOOM_LEVEL_NORMAL, BIT_DEPTH_32BPP, "gfx/EDIT_FILENAME.png") {tmpl_2x1_menu(202, EDIT_HEIGHT)}
spriteset (spriteset_EDIT_FILENAME_d_menu, ZOOM_LEVEL_NORMAL, BIT_DEPTH_32BPP, "gfx/EDIT_FILENAME.png") {tmpl_1x2_menu(303, EDIT_HEIGHT)}
spriteset (spriteset_EDIT_FILENAME_a_T1, ZOOM_LEVEL_NORMAL, BIT_DEPTH_32BPP, "gfx/EDIT_FILENAME.png") {tmpl_2x1_T1(0, EDIT_HEIGHT)}
spriteset (spriteset_EDIT_FILENAME_a_T2, ZOOM_LEVEL_NORMAL, BIT_DEPTH_32BPP, "gfx/EDIT_FILENAME.png") {tmpl_2x1_T2(0, EDIT_HEIGHT)}
spriteset (spriteset_EDIT_FILENAME_b_T1, ZOOM_LEVEL_NORMAL, BIT_DEPTH_32BPP, "gfx/EDIT_FILENAME.png") {tmpl_1x2_T1(101, EDIT_HEIGHT)}
spriteset (spriteset_EDIT_FILENAME_b_T2, ZOOM_LEVEL_NORMAL, BIT_DEPTH_32BPP, "gfx/EDIT_FILENAME.png") {tmpl_1x2_T2(101, EDIT_HEIGHT)}
spriteset (spriteset_EDIT_FILENAME_c_T1, ZOOM_LEVEL_NORMAL, BIT_DEPTH_32BPP, "gfx/EDIT_FILENAME.png") {tmpl_2x1_T1(202, EDIT_HEIGHT)}
spriteset (spriteset_EDIT_FILENAME_c_T2, ZOOM_LEVEL_NORMAL, BIT_DEPTH_32BPP, "gfx/EDIT_FILENAME.png") {tmpl_2x1_T2(202, EDIT_HEIGHT)}
spriteset (spriteset_EDIT_FILENAME_d_T1, ZOOM_LEVEL_NORMAL, BIT_DEPTH_32BPP, "gfx/EDIT_FILENAME.png") {tmpl_1x2_T1(303, EDIT_HEIGHT)}
spriteset (spriteset_EDIT_FILENAME_d_T2, ZOOM_LEVEL_NORMAL, BIT_DEPTH_32BPP, "gfx/EDIT_FILENAME.png") {tmpl_1x2_T2(303, EDIT_HEIGHT)}


spritelayout layout_EDIT_FILENAME_a_T1 {
    ground { sprite: spriteset_ground(); }
    building {
        sprite: spriteset_EDIT_FILENAME_a_T1();
        zextent: 200; 
    }
}
spritelayout layout_EDIT_FILENAME_a_T2 {
    ground { sprite: spriteset_ground(); }
    building {
        sprite: spriteset_EDIT_FILENAME_a_T2();
        zextent: 200; 
    }
}

spritelayout layout_EDIT_FILENAME_b_T1 {
    ground { sprite: spriteset_ground(); }
    building {
        sprite: spriteset_EDIT_FILENAME_b_T1();
        zextent: 200; 
    }
}
spritelayout layout_EDIT_FILENAME_b_T2 {
    ground { sprite: spriteset_ground(); }
    building {
        sprite: spriteset_EDIT_FILENAME_b_T2();
        zextent: 200; 
    }
}

spritelayout layout_EDIT_FILENAME_c_T1 {
    ground { sprite: spriteset_ground(); }
    building {
        sprite: spriteset_EDIT_FILENAME_c_T1();
        zextent: 200; 
    }
}
spritelayout layout_EDIT_FILENAME_c_T2 {
    ground { sprite: spriteset_ground(); }
    building {
        sprite: spriteset_EDIT_FILENAME_c_T2();
        zextent: 200; 
    }
}

spritelayout layout_EDIT_FILENAME_d_T1 {
    ground { sprite: spriteset_ground(); }
    building {
        sprite: spriteset_EDIT_FILENAME_d_T1();
        zextent: 200; 
    }
}
spritelayout layout_EDIT_FILENAME_d_T2 {
    ground { sprite: spriteset_ground(); }
    building {
        sprite: spriteset_EDIT_FILENAME_d_T2();
        zextent: 200; 
    }
}

spritelayout layout_EDIT_FILENAME_a_menu {
    ground { sprite: spriteset_empty(); }
    building { sprite: spriteset_EDIT_FILENAME_a_menu(); }
}
spritelayout layout_EDIT_FILENAME_b_menu {
    ground { sprite: spriteset_empty(); }
    building { sprite: spriteset_EDIT_FILENAME_b_menu(); }
}
spritelayout layout_EDIT_FILENAME_c_menu {
    ground { sprite: spriteset_empty(); }
    building { sprite: spriteset_EDIT_FILENAME_c_menu(); }
}
spritelayout layout_EDIT_FILENAME_d_menu {
    ground { sprite: spriteset_empty(); }
    building { sprite: spriteset_EDIT_FILENAME_d_menu(); }
}

switch (FEAT_OBJECTS, SELF, switch_EDIT_FILENAME_a_layout, [relative_pos]) {
    relative_coord(1, 0): layout_EDIT_FILENAME_a_T1;
    relative_coord(0, 0): layout_EDIT_FILENAME_a_T2;
}
switch (FEAT_OBJECTS, SELF, switch_EDIT_FILENAME_b_layout, [relative_pos]) {
    relative_coord(0, 0): layout_EDIT_FILENAME_b_T1;
    relative_coord(0, 1): layout_EDIT_FILENAME_b_T2;
}
switch (FEAT_OBJECTS, SELF, switch_EDIT_FILENAME_c_layout, [relative_pos]) {
    relative_coord(1, 0): layout_EDIT_FILENAME_c_T1;
    relative_coord(0, 0): layout_EDIT_FILENAME_c_T2;
}
switch (FEAT_OBJECTS, SELF, switch_EDIT_FILENAME_d_layout, [relative_pos]) {
    relative_coord(0, 0): layout_EDIT_FILENAME_d_T1;
    relative_coord(0, 1): layout_EDIT_FILENAME_d_T2;
}

switch (FEAT_OBJECTS, SELF, switch_EDIT_FILENAME_views, [view]) {
    0: switch_EDIT_FILENAME_a_layout;
    1: switch_EDIT_FILENAME_b_layout;
    2: switch_EDIT_FILENAME_c_layout;
    3: switch_EDIT_FILENAME_d_layout;
}
switch (FEAT_OBJECTS, SELF, switch_EDIT_FILENAME_menu, [view]) {
    0: layout_EDIT_FILENAME_a_menu;   
    1: layout_EDIT_FILENAME_b_menu;
    2: layout_EDIT_FILENAME_c_menu;
    3: layout_EDIT_FILENAME_d_menu;
}

item (FEAT_OBJECTS, object_EDIT_FILENAME) {
    property {
        class:                  "EDIT_CLASS";
        classname:              string(STR_EDIT_CLASS);
        name:                   string(STR_OBJ_EDIT_FILENAME);
        climates_available:     ALL_CLIMATES;
        size:                   [2,1];
        build_cost_multiplier:  8;
        remove_cost_multiplier: 8;
        introduction_date:      0x00000000;
        end_of_life_date:       0xFFFFFFFF;
        object_flags:           param_remove == 0 ? bitmask(OBJ_FLAG_ANYTHING_REMOVE) : bitmask();
        height:                 8;
        num_views:              4;
    }
    graphics {
        default:         switch_EDIT_FILENAME_views;
        purchase:        switch_EDIT_FILENAME_menu;
    }
}]]


templates.template_2x2_1views = [[
// EDIT_FILENAME
spriteset (spriteset_EDIT_FILENAME_a_menu, ZOOM_LEVEL_NORMAL, BIT_DEPTH_32BPP, "gfx/EDIT_FILENAME.png") {tmpl_2x2_4views_menu(0, EDIT_HEIGHT)}

spriteset (spriteset_EDIT_FILENAME_a_T1, ZOOM_LEVEL_NORMAL, BIT_DEPTH_32BPP, "gfx/EDIT_FILENAME.png") {tmpl_2x2_4views_T1(0, EDIT_HEIGHT)}
spriteset (spriteset_EDIT_FILENAME_a_T2, ZOOM_LEVEL_NORMAL, BIT_DEPTH_32BPP, "gfx/EDIT_FILENAME.png") {tmpl_2x2_4views_T2(0, EDIT_HEIGHT)}
spriteset (spriteset_EDIT_FILENAME_a_T3, ZOOM_LEVEL_NORMAL, BIT_DEPTH_32BPP, "gfx/EDIT_FILENAME.png") {tmpl_2x2_4views_T3(0, EDIT_HEIGHT)}
spriteset (spriteset_EDIT_FILENAME_a_T4, ZOOM_LEVEL_NORMAL, BIT_DEPTH_32BPP, "gfx/EDIT_FILENAME.png") {tmpl_2x2_4views_T4(0, EDIT_HEIGHT)}

spritelayout layout_EDIT_FILENAME_a_T1 {
    ground { sprite: spriteset_ground(); }
    building {
        sprite: spriteset_EDIT_FILENAME_a_T1();
        zextent: 200; 
    }
}
spritelayout layout_EDIT_FILENAME_a_T2 {
    ground { sprite: spriteset_ground(); }
    building {
        sprite: spriteset_EDIT_FILENAME_a_T2();
        zextent: 200; 
    }
}
spritelayout layout_EDIT_FILENAME_a_T3 {
    ground { sprite: spriteset_ground(); }
    building {
        sprite: spriteset_EDIT_FILENAME_a_T3();
        zextent: 200; 
    }
}
spritelayout layout_EDIT_FILENAME_a_T4 {
    ground { sprite: spriteset_ground(); }
    building {
        sprite: spriteset_EDIT_FILENAME_a_T4();
        zextent: 200; 
    }
}
switch (FEAT_OBJECTS, SELF, switch_EDIT_FILENAME_a_layout, [relative_pos]) {
    relative_coord(1, 0): layout_EDIT_FILENAME_a_T1;
    relative_coord(1, 1): layout_EDIT_FILENAME_a_T2;
    relative_coord(0, 1): layout_EDIT_FILENAME_a_T3;
    relative_coord(0, 0): layout_EDIT_FILENAME_a_T4;
}

spritelayout layout_EDIT_FILENAME_a_menu {
    ground { sprite: spriteset_empty(); }
    building { sprite: spriteset_EDIT_FILENAME_a_menu(); }
}

switch (FEAT_OBJECTS, SELF, switch_EDIT_FILENAME_views, [view]) {
    0: switch_EDIT_FILENAME_a_layout;
}
switch (FEAT_OBJECTS, SELF, switch_EDIT_FILENAME_menu, [view]) {
    0: layout_EDIT_FILENAME_a_menu;
}

item (FEAT_OBJECTS, object_EDIT_FILENAME) {
    property {
        class:                  "EDIT_CLASS";
        classname:              string(STR_EDIT_CLASS);
        name:                   string(STR_OBJ_EDIT_FILENAME);
        climates_available:     ALL_CLIMATES;
        size:                   [2,2];
        build_cost_multiplier:  8;
        remove_cost_multiplier: 8;
        introduction_date:      0x00000000;
        end_of_life_date:       0xFFFFFFFF;
        object_flags:           param_remove == 0 ? bitmask(OBJ_FLAG_ANYTHING_REMOVE) : bitmask();
        height:                 8;
        num_views:              1;
    }
    graphics {
        default:         switch_EDIT_FILENAME_views;
        purchase:        switch_EDIT_FILENAME_menu;
    }
}]]

templates.template_2x2_2views = [[
// EDIT_FILENAME
spriteset (spriteset_EDIT_FILENAME_a_menu, ZOOM_LEVEL_NORMAL, BIT_DEPTH_32BPP, "gfx/EDIT_FILENAME.png") {tmpl_2x2_4views_menu(0, EDIT_HEIGHT)}
spriteset (spriteset_EDIT_FILENAME_b_menu, ZOOM_LEVEL_NORMAL, BIT_DEPTH_32BPP, "gfx/EDIT_FILENAME.png") {tmpl_2x2_4views_menu(133, EDIT_HEIGHT)}

spriteset (spriteset_EDIT_FILENAME_a_T1, ZOOM_LEVEL_NORMAL, BIT_DEPTH_32BPP, "gfx/EDIT_FILENAME.png") {tmpl_2x2_4views_T1(0, EDIT_HEIGHT)}
spriteset (spriteset_EDIT_FILENAME_a_T2, ZOOM_LEVEL_NORMAL, BIT_DEPTH_32BPP, "gfx/EDIT_FILENAME.png") {tmpl_2x2_4views_T2(0, EDIT_HEIGHT)}
spriteset (spriteset_EDIT_FILENAME_a_T3, ZOOM_LEVEL_NORMAL, BIT_DEPTH_32BPP, "gfx/EDIT_FILENAME.png") {tmpl_2x2_4views_T3(0, EDIT_HEIGHT)}
spriteset (spriteset_EDIT_FILENAME_a_T4, ZOOM_LEVEL_NORMAL, BIT_DEPTH_32BPP, "gfx/EDIT_FILENAME.png") {tmpl_2x2_4views_T4(0, EDIT_HEIGHT)}

spriteset (spriteset_EDIT_FILENAME_b_T1, ZOOM_LEVEL_NORMAL, BIT_DEPTH_32BPP, "gfx/EDIT_FILENAME.png") {tmpl_2x2_4views_T1(133, EDIT_HEIGHT)}
spriteset (spriteset_EDIT_FILENAME_b_T2, ZOOM_LEVEL_NORMAL, BIT_DEPTH_32BPP, "gfx/EDIT_FILENAME.png") {tmpl_2x2_4views_T2(133, EDIT_HEIGHT)}
spriteset (spriteset_EDIT_FILENAME_b_T3, ZOOM_LEVEL_NORMAL, BIT_DEPTH_32BPP, "gfx/EDIT_FILENAME.png") {tmpl_2x2_4views_T3(133, EDIT_HEIGHT)}
spriteset (spriteset_EDIT_FILENAME_b_T4, ZOOM_LEVEL_NORMAL, BIT_DEPTH_32BPP, "gfx/EDIT_FILENAME.png") {tmpl_2x2_4views_T4(133, EDIT_HEIGHT)}

spritelayout layout_EDIT_FILENAME_a_T1 {
    ground { sprite: spriteset_ground(); }
    building {
        sprite: spriteset_EDIT_FILENAME_a_T1();
        zextent: 200; 
    }
}
spritelayout layout_EDIT_FILENAME_a_T2 {
    ground { sprite: spriteset_ground(); }
    building {
        sprite: spriteset_EDIT_FILENAME_a_T2();
        zextent: 200; 
    }
}
spritelayout layout_EDIT_FILENAME_a_T3 {
    ground { sprite: spriteset_ground(); }
    building {
        sprite: spriteset_EDIT_FILENAME_a_T3();
        zextent: 200; 
    }
}
spritelayout layout_EDIT_FILENAME_a_T4 {
    ground { sprite: spriteset_ground(); }
    building {
        sprite: spriteset_EDIT_FILENAME_a_T4();
        zextent: 200; 
    }
}
switch (FEAT_OBJECTS, SELF, switch_EDIT_FILENAME_a_layout, [relative_pos]) {
    relative_coord(1, 0): layout_EDIT_FILENAME_a_T1;
    relative_coord(1, 1): layout_EDIT_FILENAME_a_T2;
    relative_coord(0, 1): layout_EDIT_FILENAME_a_T3;
    relative_coord(0, 0): layout_EDIT_FILENAME_a_T4;
}

spritelayout layout_EDIT_FILENAME_b_T1 {
    ground { sprite: spriteset_ground(); }
    building {
        sprite: spriteset_EDIT_FILENAME_b_T1();
        zextent: 200; 
    }
}
spritelayout layout_EDIT_FILENAME_b_T2 {
    ground { sprite: spriteset_ground(); }
    building {
        sprite: spriteset_EDIT_FILENAME_b_T2();
        zextent: 200; 
    }
}
spritelayout layout_EDIT_FILENAME_b_T3 {
    ground { sprite: spriteset_ground(); }
    building {
        sprite: spriteset_EDIT_FILENAME_b_T3();
        zextent: 200; 
    }
}
spritelayout layout_EDIT_FILENAME_b_T4 {
    ground { sprite: spriteset_ground(); }
    building {
        sprite: spriteset_EDIT_FILENAME_b_T4();
        zextent: 200; 
    }
}
switch (FEAT_OBJECTS, SELF, switch_EDIT_FILENAME_b_layout, [relative_pos]) {
    relative_coord(1, 0): layout_EDIT_FILENAME_b_T1;
    relative_coord(1, 1): layout_EDIT_FILENAME_b_T2;
    relative_coord(0, 1): layout_EDIT_FILENAME_b_T3;
    relative_coord(0, 0): layout_EDIT_FILENAME_b_T4;
}

spritelayout layout_EDIT_FILENAME_a_menu {
    ground { sprite: spriteset_empty(); }
    building { sprite: spriteset_EDIT_FILENAME_a_menu(); }
}
spritelayout layout_EDIT_FILENAME_b_menu {
    ground { sprite: spriteset_empty(); }
    building { sprite: spriteset_EDIT_FILENAME_b_menu(); }
}

switch (FEAT_OBJECTS, SELF, switch_EDIT_FILENAME_views, [view]) {
    0: switch_EDIT_FILENAME_a_layout;
    1: switch_EDIT_FILENAME_b_layout;
}
switch (FEAT_OBJECTS, SELF, switch_EDIT_FILENAME_menu, [view]) {
    0: layout_EDIT_FILENAME_a_menu;   
    1: layout_EDIT_FILENAME_b_menu;
}

item (FEAT_OBJECTS, object_EDIT_FILENAME) {
    property {
        class:                  "EDIT_CLASS";
        classname:              string(STR_EDIT_CLASS);
        name:                   string(STR_OBJ_EDIT_FILENAME);
        climates_available:     ALL_CLIMATES;
        size:                   [2,2];
        build_cost_multiplier:  8;
        remove_cost_multiplier: 8;
        introduction_date:      0x00000000;
        end_of_life_date:       0xFFFFFFFF;
        object_flags:           param_remove == 0 ? bitmask(OBJ_FLAG_ANYTHING_REMOVE) : bitmask();
        height:                 8;
        num_views:              2;
    }
    graphics {
        default:         switch_EDIT_FILENAME_views;
        purchase:        switch_EDIT_FILENAME_menu;
    }
}]]

templates.template_2x2_4views = [[
// EDIT_FILENAME
spriteset (spriteset_EDIT_FILENAME_a_menu, ZOOM_LEVEL_NORMAL, BIT_DEPTH_32BPP, "gfx/EDIT_FILENAME.png") {tmpl_2x2_4views_menu(0, EDIT_HEIGHT)}
spriteset (spriteset_EDIT_FILENAME_b_menu, ZOOM_LEVEL_NORMAL, BIT_DEPTH_32BPP, "gfx/EDIT_FILENAME.png") {tmpl_2x2_4views_menu(133, EDIT_HEIGHT)}
spriteset (spriteset_EDIT_FILENAME_c_menu, ZOOM_LEVEL_NORMAL, BIT_DEPTH_32BPP, "gfx/EDIT_FILENAME.png") {tmpl_2x2_4views_menu(266, EDIT_HEIGHT)}
spriteset (spriteset_EDIT_FILENAME_d_menu, ZOOM_LEVEL_NORMAL, BIT_DEPTH_32BPP, "gfx/EDIT_FILENAME.png") {tmpl_2x2_4views_menu(399, EDIT_HEIGHT)}

spriteset (spriteset_EDIT_FILENAME_a_T1, ZOOM_LEVEL_NORMAL, BIT_DEPTH_32BPP, "gfx/EDIT_FILENAME.png") {tmpl_2x2_4views_T1(0, EDIT_HEIGHT)}
spriteset (spriteset_EDIT_FILENAME_a_T2, ZOOM_LEVEL_NORMAL, BIT_DEPTH_32BPP, "gfx/EDIT_FILENAME.png") {tmpl_2x2_4views_T2(0, EDIT_HEIGHT)}
spriteset (spriteset_EDIT_FILENAME_a_T3, ZOOM_LEVEL_NORMAL, BIT_DEPTH_32BPP, "gfx/EDIT_FILENAME.png") {tmpl_2x2_4views_T3(0, EDIT_HEIGHT)}
spriteset (spriteset_EDIT_FILENAME_a_T4, ZOOM_LEVEL_NORMAL, BIT_DEPTH_32BPP, "gfx/EDIT_FILENAME.png") {tmpl_2x2_4views_T4(0, EDIT_HEIGHT)}

spriteset (spriteset_EDIT_FILENAME_b_T1, ZOOM_LEVEL_NORMAL, BIT_DEPTH_32BPP, "gfx/EDIT_FILENAME.png") {tmpl_2x2_4views_T1(133, EDIT_HEIGHT)}
spriteset (spriteset_EDIT_FILENAME_b_T2, ZOOM_LEVEL_NORMAL, BIT_DEPTH_32BPP, "gfx/EDIT_FILENAME.png") {tmpl_2x2_4views_T2(133, EDIT_HEIGHT)}
spriteset (spriteset_EDIT_FILENAME_b_T3, ZOOM_LEVEL_NORMAL, BIT_DEPTH_32BPP, "gfx/EDIT_FILENAME.png") {tmpl_2x2_4views_T3(133, EDIT_HEIGHT)}
spriteset (spriteset_EDIT_FILENAME_b_T4, ZOOM_LEVEL_NORMAL, BIT_DEPTH_32BPP, "gfx/EDIT_FILENAME.png") {tmpl_2x2_4views_T4(133, EDIT_HEIGHT)}

spriteset (spriteset_EDIT_FILENAME_c_T1, ZOOM_LEVEL_NORMAL, BIT_DEPTH_32BPP, "gfx/EDIT_FILENAME.png") {tmpl_2x2_4views_T1(266, EDIT_HEIGHT)}
spriteset (spriteset_EDIT_FILENAME_c_T2, ZOOM_LEVEL_NORMAL, BIT_DEPTH_32BPP, "gfx/EDIT_FILENAME.png") {tmpl_2x2_4views_T2(266, EDIT_HEIGHT)}
spriteset (spriteset_EDIT_FILENAME_c_T3, ZOOM_LEVEL_NORMAL, BIT_DEPTH_32BPP, "gfx/EDIT_FILENAME.png") {tmpl_2x2_4views_T3(266, EDIT_HEIGHT)}
spriteset (spriteset_EDIT_FILENAME_c_T4, ZOOM_LEVEL_NORMAL, BIT_DEPTH_32BPP, "gfx/EDIT_FILENAME.png") {tmpl_2x2_4views_T4(266, EDIT_HEIGHT)}

spriteset (spriteset_EDIT_FILENAME_d_T1, ZOOM_LEVEL_NORMAL, BIT_DEPTH_32BPP, "gfx/EDIT_FILENAME.png") {tmpl_2x2_4views_T1(399, EDIT_HEIGHT)}
spriteset (spriteset_EDIT_FILENAME_d_T2, ZOOM_LEVEL_NORMAL, BIT_DEPTH_32BPP, "gfx/EDIT_FILENAME.png") {tmpl_2x2_4views_T2(399, EDIT_HEIGHT)}
spriteset (spriteset_EDIT_FILENAME_d_T3, ZOOM_LEVEL_NORMAL, BIT_DEPTH_32BPP, "gfx/EDIT_FILENAME.png") {tmpl_2x2_4views_T3(399, EDIT_HEIGHT)}
spriteset (spriteset_EDIT_FILENAME_d_T4, ZOOM_LEVEL_NORMAL, BIT_DEPTH_32BPP, "gfx/EDIT_FILENAME.png") {tmpl_2x2_4views_T4(399, EDIT_HEIGHT)}

spritelayout layout_EDIT_FILENAME_a_T1 {
    ground { sprite: spriteset_ground(); }
    building {
        sprite: spriteset_EDIT_FILENAME_a_T1();
        zextent: 200; 
    }
}
spritelayout layout_EDIT_FILENAME_a_T2 {
    ground { sprite: spriteset_ground(); }
    building {
        sprite: spriteset_EDIT_FILENAME_a_T2();
        zextent: 200; 
    }
}
spritelayout layout_EDIT_FILENAME_a_T3 {
    ground { sprite: spriteset_ground(); }
    building {
        sprite: spriteset_EDIT_FILENAME_a_T3();
        zextent: 200; 
    }
}
spritelayout layout_EDIT_FILENAME_a_T4 {
    ground { sprite: spriteset_ground(); }
    building {
        sprite: spriteset_EDIT_FILENAME_a_T4();
        zextent: 200; 
    }
}
switch (FEAT_OBJECTS, SELF, switch_EDIT_FILENAME_a_layout, [relative_pos]) {
    relative_coord(1, 0): layout_EDIT_FILENAME_a_T1;
    relative_coord(1, 1): layout_EDIT_FILENAME_a_T2;
    relative_coord(0, 1): layout_EDIT_FILENAME_a_T3;
    relative_coord(0, 0): layout_EDIT_FILENAME_a_T4;
}

spritelayout layout_EDIT_FILENAME_b_T1 {
    ground { sprite: spriteset_ground(); }
    building {
        sprite: spriteset_EDIT_FILENAME_b_T1();
        zextent: 200; 
    }
}
spritelayout layout_EDIT_FILENAME_b_T2 {
    ground { sprite: spriteset_ground(); }
    building {
        sprite: spriteset_EDIT_FILENAME_b_T2();
        zextent: 200; 
    }
}
spritelayout layout_EDIT_FILENAME_b_T3 {
    ground { sprite: spriteset_ground(); }
    building {
        sprite: spriteset_EDIT_FILENAME_b_T3();
        zextent: 200; 
    }
}
spritelayout layout_EDIT_FILENAME_b_T4 {
    ground { sprite: spriteset_ground(); }
    building {
        sprite: spriteset_EDIT_FILENAME_b_T4();
        zextent: 200; 
    }
}
switch (FEAT_OBJECTS, SELF, switch_EDIT_FILENAME_b_layout, [relative_pos]) {
    relative_coord(1, 0): layout_EDIT_FILENAME_b_T1;
    relative_coord(1, 1): layout_EDIT_FILENAME_b_T2;
    relative_coord(0, 1): layout_EDIT_FILENAME_b_T3;
    relative_coord(0, 0): layout_EDIT_FILENAME_b_T4;
}

spritelayout layout_EDIT_FILENAME_c_T1 {
    ground { sprite: spriteset_ground(); }
    building {
        sprite: spriteset_EDIT_FILENAME_c_T1();
        zextent: 200; 
    }
}
spritelayout layout_EDIT_FILENAME_c_T2 {
    ground { sprite: spriteset_ground(); }
    building {
        sprite: spriteset_EDIT_FILENAME_c_T2();
        zextent: 200; 
    }
}
spritelayout layout_EDIT_FILENAME_c_T3 {
    ground { sprite: spriteset_ground(); }
    building {
        sprite: spriteset_EDIT_FILENAME_c_T3();
        zextent: 200; 
    }
}
spritelayout layout_EDIT_FILENAME_c_T4 {
    ground { sprite: spriteset_ground(); }
    building {
        sprite: spriteset_EDIT_FILENAME_c_T4();
        zextent: 200; 
    }
}
switch (FEAT_OBJECTS, SELF, switch_EDIT_FILENAME_c_layout, [relative_pos]) {
    relative_coord(1, 0): layout_EDIT_FILENAME_c_T1;
    relative_coord(1, 1): layout_EDIT_FILENAME_c_T2;
    relative_coord(0, 1): layout_EDIT_FILENAME_c_T3;
    relative_coord(0, 0): layout_EDIT_FILENAME_c_T4;
}

spritelayout layout_EDIT_FILENAME_d_T1 {
    ground { sprite: spriteset_ground(); }
    building {
        sprite: spriteset_EDIT_FILENAME_d_T1();
        zextent: 200; 
    }
}
spritelayout layout_EDIT_FILENAME_d_T2 {
    ground { sprite: spriteset_ground(); }
    building {
        sprite: spriteset_EDIT_FILENAME_d_T2();
        zextent: 200; 
    }
}
spritelayout layout_EDIT_FILENAME_d_T3 {
    ground { sprite: spriteset_ground(); }
    building {
        sprite: spriteset_EDIT_FILENAME_d_T3();
        zextent: 200; 
    }
}
spritelayout layout_EDIT_FILENAME_d_T4 {
    ground { sprite: spriteset_ground(); }
    building {
        sprite: spriteset_EDIT_FILENAME_d_T4();
        zextent: 200; 
    }
}
switch (FEAT_OBJECTS, SELF, switch_EDIT_FILENAME_d_layout, [relative_pos]) {
    relative_coord(1, 0): layout_EDIT_FILENAME_d_T1;
    relative_coord(1, 1): layout_EDIT_FILENAME_d_T2;
    relative_coord(0, 1): layout_EDIT_FILENAME_d_T3;
    relative_coord(0, 0): layout_EDIT_FILENAME_d_T4;
}

spritelayout layout_EDIT_FILENAME_a_menu {
    ground { sprite: spriteset_empty(); }
    building { sprite: spriteset_EDIT_FILENAME_a_menu(); }
}
spritelayout layout_EDIT_FILENAME_b_menu {
    ground { sprite: spriteset_empty(); }
    building { sprite: spriteset_EDIT_FILENAME_b_menu(); }
}
spritelayout layout_EDIT_FILENAME_c_menu {
    ground { sprite: spriteset_empty(); }
    building { sprite: spriteset_EDIT_FILENAME_c_menu(); }
}
spritelayout layout_EDIT_FILENAME_d_menu {
    ground { sprite: spriteset_empty(); }
    building { sprite: spriteset_EDIT_FILENAME_d_menu(); }
}

switch (FEAT_OBJECTS, SELF, switch_EDIT_FILENAME_views, [view]) {
    0: switch_EDIT_FILENAME_a_layout;
    1: switch_EDIT_FILENAME_b_layout;
    2: switch_EDIT_FILENAME_c_layout;
    3: switch_EDIT_FILENAME_d_layout;
}
switch (FEAT_OBJECTS, SELF, switch_EDIT_FILENAME_menu, [view]) {
    0: layout_EDIT_FILENAME_a_menu;   
    1: layout_EDIT_FILENAME_b_menu;
    2: layout_EDIT_FILENAME_c_menu;
    3: layout_EDIT_FILENAME_d_menu;
}

item (FEAT_OBJECTS, object_EDIT_FILENAME) {
    property {
        class:                  "EDIT_CLASS";
        classname:              string(STR_EDIT_CLASS);
        name:                   string(STR_OBJ_EDIT_FILENAME);
        climates_available:     ALL_CLIMATES;
        size:                   [2,2];
        build_cost_multiplier:  8;
        remove_cost_multiplier: 8;
        introduction_date:      0x00000000;
        end_of_life_date:       0xFFFFFFFF;
        object_flags:           param_remove == 0 ? bitmask(OBJ_FLAG_ANYTHING_REMOVE) : bitmask();
        height:                 8;
        num_views:              4;
    }
    graphics {
        default:         switch_EDIT_FILENAME_views;
        purchase:        switch_EDIT_FILENAME_menu;
    }
}]]


templates.template_1x3_1views = [[
// EDIT_FILENAME
spriteset (spriteset_EDIT_FILENAME_b_menu, ZOOM_LEVEL_NORMAL, BIT_DEPTH_32BPP, "gfx/EDIT_FILENAME.png") {tmpl_1x3_menu(0, EDIT_HEIGHT)}
spriteset (spriteset_EDIT_FILENAME_b_T1, ZOOM_LEVEL_NORMAL, BIT_DEPTH_32BPP, "gfx/EDIT_FILENAME.png") {tmpl_1x3_T1(0, EDIT_HEIGHT)}
spriteset (spriteset_EDIT_FILENAME_b_T2, ZOOM_LEVEL_NORMAL, BIT_DEPTH_32BPP, "gfx/EDIT_FILENAME.png") {tmpl_1x3_T2(0, EDIT_HEIGHT)}
spriteset (spriteset_EDIT_FILENAME_b_T3, ZOOM_LEVEL_NORMAL, BIT_DEPTH_32BPP, "gfx/EDIT_FILENAME.png") {tmpl_1x3_T3(0, EDIT_HEIGHT)}

spritelayout layout_EDIT_FILENAME_b_T1 {
    ground { sprite: spriteset_ground(); }
    building {
        sprite: spriteset_EDIT_FILENAME_b_T1();
        zextent: 200; 
    }
}
spritelayout layout_EDIT_FILENAME_b_T2 {
    ground { sprite: spriteset_ground(); }
    building {
        sprite: spriteset_EDIT_FILENAME_b_T2();
        zextent: 200; 
    }
}
spritelayout layout_EDIT_FILENAME_b_T3 {
    ground { sprite: spriteset_ground(); }
    building {
        sprite: spriteset_EDIT_FILENAME_b_T3();
        zextent: 200; 
    }
}

switch (FEAT_OBJECTS, SELF, switch_EDIT_FILENAME_b_layout, [relative_pos]) {
    relative_coord(0, 0): layout_EDIT_FILENAME_b_T1;
    relative_coord(0, 1): layout_EDIT_FILENAME_b_T2;
    relative_coord(0, 2): layout_EDIT_FILENAME_b_T3;
}

spritelayout layout_EDIT_FILENAME_b_menu {
    ground { sprite: spriteset_empty(); }
    building { sprite: spriteset_EDIT_FILENAME_b_menu(); }
}

switch (FEAT_OBJECTS, SELF, switch_EDIT_FILENAME_views, [view]) {
    0: switch_EDIT_FILENAME_b_layout;
}
switch (FEAT_OBJECTS, SELF, switch_EDIT_FILENAME_menu, [view]) {
    0: layout_EDIT_FILENAME_b_menu;
}

item (FEAT_OBJECTS, object_EDIT_FILENAME) {
    property {
        class:                  "EDIT_CLASS";
        classname:              string(STR_EDIT_CLASS);
        name:                   string(STR_OBJ_EDIT_FILENAME);
        climates_available:     ALL_CLIMATES;
        size:                   [1,3];
        build_cost_multiplier:  8;
        remove_cost_multiplier: 8;
        introduction_date:      0x00000000;
        end_of_life_date:       0xFFFFFFFF;
        object_flags:           param_remove == 0 ? bitmask(OBJ_FLAG_ANYTHING_REMOVE) : bitmask();
        height:                 8;
        num_views:              1;
    }
    graphics {
        default:         switch_EDIT_FILENAME_views;
        purchase:        switch_EDIT_FILENAME_menu;
    }
}]]

templates.template_3x1_1views = [[
// EDIT_FILENAME
spriteset (spriteset_EDIT_FILENAME_a_menu, ZOOM_LEVEL_NORMAL, BIT_DEPTH_32BPP, "gfx/EDIT_FILENAME.png") {tmpl_3x1_menu(0, EDIT_HEIGHT)}
spriteset (spriteset_EDIT_FILENAME_a_T1, ZOOM_LEVEL_NORMAL, BIT_DEPTH_32BPP, "gfx/EDIT_FILENAME.png") {tmpl_3x1_T1(0, EDIT_HEIGHT)}
spriteset (spriteset_EDIT_FILENAME_a_T2, ZOOM_LEVEL_NORMAL, BIT_DEPTH_32BPP, "gfx/EDIT_FILENAME.png") {tmpl_3x1_T2(0, EDIT_HEIGHT)}
spriteset (spriteset_EDIT_FILENAME_a_T3, ZOOM_LEVEL_NORMAL, BIT_DEPTH_32BPP, "gfx/EDIT_FILENAME.png") {tmpl_3x1_T3(0, EDIT_HEIGHT)}

spritelayout layout_EDIT_FILENAME_a_T1 {
    ground { sprite: spriteset_ground(); }
    building {
        sprite: spriteset_EDIT_FILENAME_a_T1();
        zextent: 200; 
    }
}
spritelayout layout_EDIT_FILENAME_a_T2 {
    ground { sprite: spriteset_ground(); }
    building {
        sprite: spriteset_EDIT_FILENAME_a_T2();
        zextent: 200; 
    }
}
spritelayout layout_EDIT_FILENAME_a_T3 {
    ground { sprite: spriteset_ground(); }
    building {
        sprite: spriteset_EDIT_FILENAME_a_T3();
        zextent: 200; 
    }
}

switch (FEAT_OBJECTS, SELF, switch_EDIT_FILENAME_a_layout, [relative_pos]) {
    relative_coord(2, 0): layout_EDIT_FILENAME_a_T1;
    relative_coord(1, 0): layout_EDIT_FILENAME_a_T2;
    relative_coord(0, 0): layout_EDIT_FILENAME_a_T3;
}
spritelayout layout_EDIT_FILENAME_a_menu {
    ground { sprite: spriteset_empty(); }
    building { sprite: spriteset_EDIT_FILENAME_a_menu(); }
}

switch (FEAT_OBJECTS, SELF, switch_EDIT_FILENAME_views, [view]) {
    0: switch_EDIT_FILENAME_a_layout;
}
switch (FEAT_OBJECTS, SELF, switch_EDIT_FILENAME_menu, [view]) {
    0: layout_EDIT_FILENAME_a_menu;
}

item (FEAT_OBJECTS, object_EDIT_FILENAME) {
    property {
        class:                  "EDIT_CLASS";
        classname:              string(STR_EDIT_CLASS);
        name:                   string(STR_OBJ_EDIT_FILENAME);
        climates_available:     ALL_CLIMATES;
        size:                   [3,1];
        build_cost_multiplier:  8;
        remove_cost_multiplier: 8;
        introduction_date:      0x00000000;
        end_of_life_date:       0xFFFFFFFF;
        object_flags:           param_remove == 0 ? bitmask(OBJ_FLAG_ANYTHING_REMOVE) : bitmask();
        height:                 8;
        num_views:              1;
    }
    graphics {
        default:         switch_EDIT_FILENAME_views;
        purchase:        switch_EDIT_FILENAME_menu;
    }
}]]

templates.template_3x1_2views = [[
// EDIT_FILENAME
spriteset (spriteset_EDIT_FILENAME_a_menu, ZOOM_LEVEL_NORMAL, BIT_DEPTH_32BPP, "gfx/EDIT_FILENAME.png") {tmpl_3x1_menu(0, EDIT_HEIGHT)}
spriteset (spriteset_EDIT_FILENAME_b_menu, ZOOM_LEVEL_NORMAL, BIT_DEPTH_32BPP, "gfx/EDIT_FILENAME.png") {tmpl_1x3_menu(133, EDIT_HEIGHT)}
spriteset (spriteset_EDIT_FILENAME_a_T1, ZOOM_LEVEL_NORMAL, BIT_DEPTH_32BPP, "gfx/EDIT_FILENAME.png") {tmpl_3x1_T1(0, EDIT_HEIGHT)}
spriteset (spriteset_EDIT_FILENAME_a_T2, ZOOM_LEVEL_NORMAL, BIT_DEPTH_32BPP, "gfx/EDIT_FILENAME.png") {tmpl_3x1_T2(0, EDIT_HEIGHT)}
spriteset (spriteset_EDIT_FILENAME_a_T3, ZOOM_LEVEL_NORMAL, BIT_DEPTH_32BPP, "gfx/EDIT_FILENAME.png") {tmpl_3x1_T3(0, EDIT_HEIGHT)}
spriteset (spriteset_EDIT_FILENAME_b_T1, ZOOM_LEVEL_NORMAL, BIT_DEPTH_32BPP, "gfx/EDIT_FILENAME.png") {tmpl_1x3_T1(133, EDIT_HEIGHT)}
spriteset (spriteset_EDIT_FILENAME_b_T2, ZOOM_LEVEL_NORMAL, BIT_DEPTH_32BPP, "gfx/EDIT_FILENAME.png") {tmpl_1x3_T2(133, EDIT_HEIGHT)}
spriteset (spriteset_EDIT_FILENAME_b_T3, ZOOM_LEVEL_NORMAL, BIT_DEPTH_32BPP, "gfx/EDIT_FILENAME.png") {tmpl_1x3_T3(133, EDIT_HEIGHT)}

spritelayout layout_EDIT_FILENAME_a_T1 {
    ground { sprite: spriteset_ground(); }
    building {
        sprite: spriteset_EDIT_FILENAME_a_T1();
        zextent: 200; 
    }
}
spritelayout layout_EDIT_FILENAME_a_T2 {
    ground { sprite: spriteset_ground(); }
    building {
        sprite: spriteset_EDIT_FILENAME_a_T2();
        zextent: 200; 
    }
}
spritelayout layout_EDIT_FILENAME_a_T3 {
    ground { sprite: spriteset_ground(); }
    building {
        sprite: spriteset_EDIT_FILENAME_a_T3();
        zextent: 200; 
    }
}

switch (FEAT_OBJECTS, SELF, switch_EDIT_FILENAME_a_layout, [relative_pos]) {
    relative_coord(2, 0): layout_EDIT_FILENAME_a_T1;
    relative_coord(1, 0): layout_EDIT_FILENAME_a_T2;
    relative_coord(0, 0): layout_EDIT_FILENAME_a_T3;
}

spritelayout layout_EDIT_FILENAME_b_T1 {
    ground { sprite: spriteset_ground(); }
    building {
        sprite: spriteset_EDIT_FILENAME_b_T1();
        zextent: 200; 
    }
}
spritelayout layout_EDIT_FILENAME_b_T2 {
    ground { sprite: spriteset_ground(); }
    building {
        sprite: spriteset_EDIT_FILENAME_b_T2();
        zextent: 200; 
    }
}
spritelayout layout_EDIT_FILENAME_b_T3 {
    ground { sprite: spriteset_ground(); }
    building {
        sprite: spriteset_EDIT_FILENAME_b_T3();
        zextent: 200; 
    }
}

switch (FEAT_OBJECTS, SELF, switch_EDIT_FILENAME_b_layout, [relative_pos]) {
    relative_coord(0, 0): layout_EDIT_FILENAME_b_T1;
    relative_coord(0, 1): layout_EDIT_FILENAME_b_T2;
    relative_coord(0, 2): layout_EDIT_FILENAME_b_T3;
}

spritelayout layout_EDIT_FILENAME_a_menu {
    ground { sprite: spriteset_empty(); }
    building { sprite: spriteset_EDIT_FILENAME_a_menu(); }
}
spritelayout layout_EDIT_FILENAME_b_menu {
    ground { sprite: spriteset_empty(); }
    building { sprite: spriteset_EDIT_FILENAME_b_menu(); }
}

switch (FEAT_OBJECTS, SELF, switch_EDIT_FILENAME_views, [view]) {
    0: switch_EDIT_FILENAME_a_layout;
    1: switch_EDIT_FILENAME_b_layout;
}
switch (FEAT_OBJECTS, SELF, switch_EDIT_FILENAME_menu, [view]) {
    0: layout_EDIT_FILENAME_a_menu;   
    1: layout_EDIT_FILENAME_b_menu;
}

item (FEAT_OBJECTS, object_EDIT_FILENAME) {
    property {
        class:                  "EDIT_CLASS";
        classname:              string(STR_EDIT_CLASS);
        name:                   string(STR_OBJ_EDIT_FILENAME);
        climates_available:     ALL_CLIMATES;
        size:                   [3,1];
        build_cost_multiplier:  8;
        remove_cost_multiplier: 8;
        introduction_date:      0x00000000;
        end_of_life_date:       0xFFFFFFFF;
        object_flags:           param_remove == 0 ? bitmask(OBJ_FLAG_ANYTHING_REMOVE) : bitmask();
        height:                 8;
        num_views:              2;
    }
    graphics {
        default:         switch_EDIT_FILENAME_views;
        purchase:        switch_EDIT_FILENAME_menu;
    }
}]]

templates.template_3x1_4views = [[
// EDIT_FILENAME
spriteset (spriteset_EDIT_FILENAME_a_menu, ZOOM_LEVEL_NORMAL, BIT_DEPTH_32BPP, "gfx/EDIT_FILENAME.png") {tmpl_3x1_menu(0, EDIT_HEIGHT)}
spriteset (spriteset_EDIT_FILENAME_b_menu, ZOOM_LEVEL_NORMAL, BIT_DEPTH_32BPP, "gfx/EDIT_FILENAME.png") {tmpl_1x3_menu(133, EDIT_HEIGHT)}
spriteset (spriteset_EDIT_FILENAME_c_menu, ZOOM_LEVEL_NORMAL, BIT_DEPTH_32BPP, "gfx/EDIT_FILENAME.png") {tmpl_3x1_menu(266, EDIT_HEIGHT)}
spriteset (spriteset_EDIT_FILENAME_d_menu, ZOOM_LEVEL_NORMAL, BIT_DEPTH_32BPP, "gfx/EDIT_FILENAME.png") {tmpl_1x3_menu(399, EDIT_HEIGHT)}
spriteset (spriteset_EDIT_FILENAME_a_T1, ZOOM_LEVEL_NORMAL, BIT_DEPTH_32BPP, "gfx/EDIT_FILENAME.png") {tmpl_3x1_T1(0, EDIT_HEIGHT)}
spriteset (spriteset_EDIT_FILENAME_a_T2, ZOOM_LEVEL_NORMAL, BIT_DEPTH_32BPP, "gfx/EDIT_FILENAME.png") {tmpl_3x1_T2(0, EDIT_HEIGHT)}
spriteset (spriteset_EDIT_FILENAME_a_T3, ZOOM_LEVEL_NORMAL, BIT_DEPTH_32BPP, "gfx/EDIT_FILENAME.png") {tmpl_3x1_T3(0, EDIT_HEIGHT)}
spriteset (spriteset_EDIT_FILENAME_b_T1, ZOOM_LEVEL_NORMAL, BIT_DEPTH_32BPP, "gfx/EDIT_FILENAME.png") {tmpl_1x3_T1(133, EDIT_HEIGHT)}
spriteset (spriteset_EDIT_FILENAME_b_T2, ZOOM_LEVEL_NORMAL, BIT_DEPTH_32BPP, "gfx/EDIT_FILENAME.png") {tmpl_1x3_T2(133, EDIT_HEIGHT)}
spriteset (spriteset_EDIT_FILENAME_b_T3, ZOOM_LEVEL_NORMAL, BIT_DEPTH_32BPP, "gfx/EDIT_FILENAME.png") {tmpl_1x3_T3(133, EDIT_HEIGHT)}
spriteset (spriteset_EDIT_FILENAME_c_T1, ZOOM_LEVEL_NORMAL, BIT_DEPTH_32BPP, "gfx/EDIT_FILENAME.png") {tmpl_3x1_T1(266, EDIT_HEIGHT)}
spriteset (spriteset_EDIT_FILENAME_c_T2, ZOOM_LEVEL_NORMAL, BIT_DEPTH_32BPP, "gfx/EDIT_FILENAME.png") {tmpl_3x1_T2(266, EDIT_HEIGHT)}
spriteset (spriteset_EDIT_FILENAME_c_T3, ZOOM_LEVEL_NORMAL, BIT_DEPTH_32BPP, "gfx/EDIT_FILENAME.png") {tmpl_3x1_T3(266, EDIT_HEIGHT)}
spriteset (spriteset_EDIT_FILENAME_d_T1, ZOOM_LEVEL_NORMAL, BIT_DEPTH_32BPP, "gfx/EDIT_FILENAME.png") {tmpl_1x3_T1(399, EDIT_HEIGHT)}
spriteset (spriteset_EDIT_FILENAME_d_T2, ZOOM_LEVEL_NORMAL, BIT_DEPTH_32BPP, "gfx/EDIT_FILENAME.png") {tmpl_1x3_T2(399, EDIT_HEIGHT)}
spriteset (spriteset_EDIT_FILENAME_d_T3, ZOOM_LEVEL_NORMAL, BIT_DEPTH_32BPP, "gfx/EDIT_FILENAME.png") {tmpl_1x3_T3(399, EDIT_HEIGHT)}

spritelayout layout_EDIT_FILENAME_a_T1 {
    ground { sprite: spriteset_ground(); }
    building {
        sprite: spriteset_EDIT_FILENAME_a_T1();
        zextent: 200; 
    }
}
spritelayout layout_EDIT_FILENAME_a_T2 {
    ground { sprite: spriteset_ground(); }
    building {
        sprite: spriteset_EDIT_FILENAME_a_T2();
        zextent: 200; 
    }
}
spritelayout layout_EDIT_FILENAME_a_T3 {
    ground { sprite: spriteset_ground(); }
    building {
        sprite: spriteset_EDIT_FILENAME_a_T3();
        zextent: 200; 
    }
}

switch (FEAT_OBJECTS, SELF, switch_EDIT_FILENAME_a_layout, [relative_pos]) {
    relative_coord(2, 0): layout_EDIT_FILENAME_a_T1;
    relative_coord(1, 0): layout_EDIT_FILENAME_a_T2;
    relative_coord(0, 0): layout_EDIT_FILENAME_a_T3;
}

spritelayout layout_EDIT_FILENAME_b_T1 {
    ground { sprite: spriteset_ground(); }
    building {
        sprite: spriteset_EDIT_FILENAME_b_T1();
        zextent: 200; 
    }
}
spritelayout layout_EDIT_FILENAME_b_T2 {
    ground { sprite: spriteset_ground(); }
    building {
        sprite: spriteset_EDIT_FILENAME_b_T2();
        zextent: 200; 
    }
}
spritelayout layout_EDIT_FILENAME_b_T3 {
    ground { sprite: spriteset_ground(); }
    building {
        sprite: spriteset_EDIT_FILENAME_b_T3();
        zextent: 200; 
    }
}

switch (FEAT_OBJECTS, SELF, switch_EDIT_FILENAME_b_layout, [relative_pos]) {
    relative_coord(0, 0): layout_EDIT_FILENAME_b_T1;
    relative_coord(0, 1): layout_EDIT_FILENAME_b_T2;
    relative_coord(0, 2): layout_EDIT_FILENAME_b_T3;
}

spritelayout layout_EDIT_FILENAME_c_T1 {
    ground { sprite: spriteset_ground(); }
    building {
        sprite: spriteset_EDIT_FILENAME_c_T1();
        zextent: 200; 
    }
}
spritelayout layout_EDIT_FILENAME_c_T2 {
    ground { sprite: spriteset_ground(); }
    building {
        sprite: spriteset_EDIT_FILENAME_c_T2();
        zextent: 200; 
    }
}
spritelayout layout_EDIT_FILENAME_c_T3 {
    ground { sprite: spriteset_ground(); }
    building {
        sprite: spriteset_EDIT_FILENAME_c_T3();
        zextent: 200; 
    }
}

switch (FEAT_OBJECTS, SELF, switch_EDIT_FILENAME_c_layout, [relative_pos]) {
    relative_coord(2, 0): layout_EDIT_FILENAME_c_T1;
    relative_coord(1, 0): layout_EDIT_FILENAME_c_T2;
    relative_coord(0, 0): layout_EDIT_FILENAME_c_T3;
}

spritelayout layout_EDIT_FILENAME_d_T1 {
    ground { sprite: spriteset_ground(); }
    building {
        sprite: spriteset_EDIT_FILENAME_d_T1();
        zextent: 200; 
    }
}
spritelayout layout_EDIT_FILENAME_d_T2 {
    ground { sprite: spriteset_ground(); }
    building {
        sprite: spriteset_EDIT_FILENAME_d_T2();
        zextent: 200; 
    }
}
spritelayout layout_EDIT_FILENAME_d_T3 {
    ground { sprite: spriteset_ground(); }
    building {
        sprite: spriteset_EDIT_FILENAME_d_T3();
        zextent: 200; 
    }
}

switch (FEAT_OBJECTS, SELF, switch_EDIT_FILENAME_d_layout, [relative_pos]) {
    relative_coord(0, 0): layout_EDIT_FILENAME_d_T1;
    relative_coord(0, 1): layout_EDIT_FILENAME_d_T2;
    relative_coord(0, 2): layout_EDIT_FILENAME_d_T3;
}

spritelayout layout_EDIT_FILENAME_a_menu {
    ground { sprite: spriteset_empty(); }
    building { sprite: spriteset_EDIT_FILENAME_a_menu(); }
}
spritelayout layout_EDIT_FILENAME_b_menu {
    ground { sprite: spriteset_empty(); }
    building { sprite: spriteset_EDIT_FILENAME_b_menu(); }
}
spritelayout layout_EDIT_FILENAME_c_menu {
    ground { sprite: spriteset_empty(); }
    building { sprite: spriteset_EDIT_FILENAME_c_menu(); }
}
spritelayout layout_EDIT_FILENAME_d_menu {
    ground { sprite: spriteset_empty(); }
    building { sprite: spriteset_EDIT_FILENAME_d_menu(); }
}

switch (FEAT_OBJECTS, SELF, switch_EDIT_FILENAME_views, [view]) {
    0: switch_EDIT_FILENAME_a_layout;
    1: switch_EDIT_FILENAME_b_layout;
    2: switch_EDIT_FILENAME_c_layout;
    3: switch_EDIT_FILENAME_d_layout;
}
switch (FEAT_OBJECTS, SELF, switch_EDIT_FILENAME_menu, [view]) {
    0: layout_EDIT_FILENAME_a_menu;   
    1: layout_EDIT_FILENAME_b_menu;
    2: layout_EDIT_FILENAME_c_menu;
    3: layout_EDIT_FILENAME_d_menu;
}

item (FEAT_OBJECTS, object_EDIT_FILENAME) {
    property {
        class:                  "EDIT_CLASS";
        classname:              string(STR_EDIT_CLASS);
        name:                   string(STR_OBJ_EDIT_FILENAME);
        climates_available:     ALL_CLIMATES;
        size:                   [3,1];
        build_cost_multiplier:  8;
        remove_cost_multiplier: 8;
        introduction_date:      0x00000000;
        end_of_life_date:       0xFFFFFFFF;
        object_flags:           param_remove == 0 ? bitmask(OBJ_FLAG_ANYTHING_REMOVE) : bitmask();
        height:                 8;
        num_views:              4;
    }
    graphics {
        default:         switch_EDIT_FILENAME_views;
        purchase:        switch_EDIT_FILENAME_menu;
    }
}]]


templates.template_2x3_1views = [[
// EDIT_FILENAME
spriteset (spriteset_EDIT_FILENAME_b_menu, ZOOM_LEVEL_NORMAL, BIT_DEPTH_32BPP, "gfx/EDIT_FILENAME.png") {tmpl_2x3_menu(0, EDIT_HEIGHT)}
spriteset (spriteset_EDIT_FILENAME_b_T0, ZOOM_LEVEL_NORMAL, BIT_DEPTH_32BPP, "gfx/EDIT_FILENAME.png") {tmpl_2x3_T0(0, EDIT_HEIGHT)}
spriteset (spriteset_EDIT_FILENAME_b_T1, ZOOM_LEVEL_NORMAL, BIT_DEPTH_32BPP, "gfx/EDIT_FILENAME.png") {tmpl_2x3_T1(0, EDIT_HEIGHT)}
spriteset (spriteset_EDIT_FILENAME_b_T2, ZOOM_LEVEL_NORMAL, BIT_DEPTH_32BPP, "gfx/EDIT_FILENAME.png") {tmpl_2x3_T2(0, EDIT_HEIGHT)}
spriteset (spriteset_EDIT_FILENAME_b_T3, ZOOM_LEVEL_NORMAL, BIT_DEPTH_32BPP, "gfx/EDIT_FILENAME.png") {tmpl_2x3_T3(0, EDIT_HEIGHT)}
spriteset (spriteset_EDIT_FILENAME_b_T4, ZOOM_LEVEL_NORMAL, BIT_DEPTH_32BPP, "gfx/EDIT_FILENAME.png") {tmpl_2x3_T4(0, EDIT_HEIGHT)}

spritelayout layout_EDIT_FILENAME_b_T0 {
    ground { sprite: spriteset_ground(); }
    building {
        sprite: spriteset_EDIT_FILENAME_b_T0();
        zextent: 200; 
    }
}
spritelayout layout_EDIT_FILENAME_b_T1 {
    ground { sprite: spriteset_ground(); }
    building {
        sprite: spriteset_EDIT_FILENAME_b_T1();
        zextent: 200; 
    }
}
spritelayout layout_EDIT_FILENAME_b_T2 {
    ground { sprite: spriteset_ground(); }
    building {
        sprite: spriteset_EDIT_FILENAME_b_T2();
        zextent: 200; 
    }
}
spritelayout layout_EDIT_FILENAME_b_T3 {
    ground { sprite: spriteset_ground(); }
    building {
        sprite: spriteset_EDIT_FILENAME_b_T3();
        zextent: 200; 
    }
}
spritelayout layout_EDIT_FILENAME_b_T4 {
    ground { sprite: spriteset_ground(); }
    building {
        sprite: spriteset_EDIT_FILENAME_b_T4();
        zextent: 200; 
    }
}

switch (FEAT_OBJECTS, SELF, switch_EDIT_FILENAME_b_layout, [relative_pos]) {
    relative_coord(1, 0): layout_EDIT_FILENAME_b_T1;
    relative_coord(1, 1): layout_EDIT_FILENAME_b_T2;
    relative_coord(1, 2): layout_EDIT_FILENAME_b_T3;
    relative_coord(0, 2): layout_EDIT_FILENAME_b_T4;
    relative_coord(0, 0): layout_EDIT_FILENAME_b_T0;
    relative_coord(0, 1): layout_ground;
}

spritelayout layout_EDIT_FILENAME_b_menu {
    ground { sprite: spriteset_empty(); }
    building { sprite: spriteset_EDIT_FILENAME_b_menu(); }
}

switch (FEAT_OBJECTS, SELF, switch_EDIT_FILENAME_views, [view]) {
    0: switch_EDIT_FILENAME_b_layout;
}
switch (FEAT_OBJECTS, SELF, switch_EDIT_FILENAME_menu, [view]) {
    0: layout_EDIT_FILENAME_b_menu;
}

item (FEAT_OBJECTS, object_EDIT_FILENAME) {
    property {
        class:                  "EDIT_CLASS";
        classname:              string(STR_EDIT_CLASS);
        name:                   string(STR_OBJ_EDIT_FILENAME);
        climates_available:     ALL_CLIMATES;
        size:                   [2,3];
        build_cost_multiplier:  8;
        remove_cost_multiplier: 8;
        introduction_date:      0x00000000;
        end_of_life_date:       0xFFFFFFFF;
        object_flags:           param_remove == 0 ? bitmask(OBJ_FLAG_ANYTHING_REMOVE) : bitmask();
        height:                 8;
        num_views:              1;
    }
    graphics {
        default:         switch_EDIT_FILENAME_views;
        purchase:        switch_EDIT_FILENAME_menu;
    }
}]]

templates.template_3x2_1views = [[
// EDIT_FILENAME
spriteset (spriteset_EDIT_FILENAME_a_menu, ZOOM_LEVEL_NORMAL, BIT_DEPTH_32BPP, "gfx/EDIT_FILENAME.png") {tmpl_3x2_menu(0, EDIT_HEIGHT)}

spriteset (spriteset_EDIT_FILENAME_a_T0, ZOOM_LEVEL_NORMAL, BIT_DEPTH_32BPP, "gfx/EDIT_FILENAME.png") {tmpl_3x2_T0(0, EDIT_HEIGHT)}
spriteset (spriteset_EDIT_FILENAME_a_T1, ZOOM_LEVEL_NORMAL, BIT_DEPTH_32BPP, "gfx/EDIT_FILENAME.png") {tmpl_3x2_T1(0, EDIT_HEIGHT)}
spriteset (spriteset_EDIT_FILENAME_a_T2, ZOOM_LEVEL_NORMAL, BIT_DEPTH_32BPP, "gfx/EDIT_FILENAME.png") {tmpl_3x2_T2(0, EDIT_HEIGHT)}
spriteset (spriteset_EDIT_FILENAME_a_T3, ZOOM_LEVEL_NORMAL, BIT_DEPTH_32BPP, "gfx/EDIT_FILENAME.png") {tmpl_3x2_T3(0, EDIT_HEIGHT)}
spriteset (spriteset_EDIT_FILENAME_a_T4, ZOOM_LEVEL_NORMAL, BIT_DEPTH_32BPP, "gfx/EDIT_FILENAME.png") {tmpl_3x2_T4(0, EDIT_HEIGHT)}

spritelayout layout_EDIT_FILENAME_a_T0 {
    ground { sprite: spriteset_ground(); }
    building {
        sprite: spriteset_EDIT_FILENAME_a_T0();
        zextent: 200; 
    }
}
spritelayout layout_EDIT_FILENAME_a_T1 {
    ground { sprite: spriteset_ground(); }
    building {
        sprite: spriteset_EDIT_FILENAME_a_T1();
        zextent: 200; 
    }
}
spritelayout layout_EDIT_FILENAME_a_T2 {
    ground { sprite: spriteset_ground(); }
    building {
        sprite: spriteset_EDIT_FILENAME_a_T2();
        zextent: 200; 
    }
}
spritelayout layout_EDIT_FILENAME_a_T3 {
    ground { sprite: spriteset_ground(); }
    building {
        sprite: spriteset_EDIT_FILENAME_a_T3();
        zextent: 200; 
    }
}
spritelayout layout_EDIT_FILENAME_a_T4 {
    ground { sprite: spriteset_ground(); }
    building {
        sprite: spriteset_EDIT_FILENAME_a_T4();
        zextent: 200; 
    }
}

switch (FEAT_OBJECTS, SELF, switch_EDIT_FILENAME_a_layout, [relative_pos]) {
    relative_coord(2, 0): layout_EDIT_FILENAME_a_T1;
    relative_coord(2, 1): layout_EDIT_FILENAME_a_T2;
    relative_coord(1, 1): layout_EDIT_FILENAME_a_T3;
    relative_coord(0, 1): layout_EDIT_FILENAME_a_T4;
    relative_coord(0, 0): layout_EDIT_FILENAME_a_T0;
    relative_coord(1, 0): layout_ground;
}

spritelayout layout_EDIT_FILENAME_a_menu {
    ground { sprite: spriteset_empty(); }
    building { sprite: spriteset_EDIT_FILENAME_a_menu(); }
}

switch (FEAT_OBJECTS, SELF, switch_EDIT_FILENAME_views, [view]) {
    0: switch_EDIT_FILENAME_a_layout;
}
switch (FEAT_OBJECTS, SELF, switch_EDIT_FILENAME_menu, [view]) {
    0: layout_EDIT_FILENAME_a_menu;
}

item (FEAT_OBJECTS, object_EDIT_FILENAME) {
    property {
        class:                  "EDIT_CLASS";
        classname:              string(STR_EDIT_CLASS);
        name:                   string(STR_OBJ_EDIT_FILENAME);
        climates_available:     ALL_CLIMATES;
        size:                   [3,2];
        build_cost_multiplier:  8;
        remove_cost_multiplier: 8;
        introduction_date:      0x00000000;
        end_of_life_date:       0xFFFFFFFF;
        object_flags:           param_remove == 0 ? bitmask(OBJ_FLAG_ANYTHING_REMOVE) : bitmask();
        height:                 8;
        num_views:              1;
    }
    graphics {
        default:         switch_EDIT_FILENAME_views;
        purchase:        switch_EDIT_FILENAME_menu;
    }
}]]

templates.template_3x2_2views = [[
// EDIT_FILENAME
spriteset (spriteset_EDIT_FILENAME_a_menu, ZOOM_LEVEL_NORMAL, BIT_DEPTH_32BPP, "gfx/EDIT_FILENAME.png") {tmpl_3x2_menu(0, EDIT_HEIGHT)}
spriteset (spriteset_EDIT_FILENAME_b_menu, ZOOM_LEVEL_NORMAL, BIT_DEPTH_32BPP, "gfx/EDIT_FILENAME.png") {tmpl_2x3_menu(165, EDIT_HEIGHT)}

spriteset (spriteset_EDIT_FILENAME_a_T0, ZOOM_LEVEL_NORMAL, BIT_DEPTH_32BPP, "gfx/EDIT_FILENAME.png") {tmpl_3x2_T0(0, EDIT_HEIGHT)}
spriteset (spriteset_EDIT_FILENAME_a_T1, ZOOM_LEVEL_NORMAL, BIT_DEPTH_32BPP, "gfx/EDIT_FILENAME.png") {tmpl_3x2_T1(0, EDIT_HEIGHT)}
spriteset (spriteset_EDIT_FILENAME_a_T2, ZOOM_LEVEL_NORMAL, BIT_DEPTH_32BPP, "gfx/EDIT_FILENAME.png") {tmpl_3x2_T2(0, EDIT_HEIGHT)}
spriteset (spriteset_EDIT_FILENAME_a_T3, ZOOM_LEVEL_NORMAL, BIT_DEPTH_32BPP, "gfx/EDIT_FILENAME.png") {tmpl_3x2_T3(0, EDIT_HEIGHT)}
spriteset (spriteset_EDIT_FILENAME_a_T4, ZOOM_LEVEL_NORMAL, BIT_DEPTH_32BPP, "gfx/EDIT_FILENAME.png") {tmpl_3x2_T4(0, EDIT_HEIGHT)}

spriteset (spriteset_EDIT_FILENAME_b_T0, ZOOM_LEVEL_NORMAL, BIT_DEPTH_32BPP, "gfx/EDIT_FILENAME.png") {tmpl_2x3_T0(165, EDIT_HEIGHT)}
spriteset (spriteset_EDIT_FILENAME_b_T1, ZOOM_LEVEL_NORMAL, BIT_DEPTH_32BPP, "gfx/EDIT_FILENAME.png") {tmpl_2x3_T1(165, EDIT_HEIGHT)}
spriteset (spriteset_EDIT_FILENAME_b_T2, ZOOM_LEVEL_NORMAL, BIT_DEPTH_32BPP, "gfx/EDIT_FILENAME.png") {tmpl_2x3_T2(165, EDIT_HEIGHT)}
spriteset (spriteset_EDIT_FILENAME_b_T3, ZOOM_LEVEL_NORMAL, BIT_DEPTH_32BPP, "gfx/EDIT_FILENAME.png") {tmpl_2x3_T3(165, EDIT_HEIGHT)}
spriteset (spriteset_EDIT_FILENAME_b_T4, ZOOM_LEVEL_NORMAL, BIT_DEPTH_32BPP, "gfx/EDIT_FILENAME.png") {tmpl_2x3_T4(165, EDIT_HEIGHT)}

spritelayout layout_EDIT_FILENAME_a_T0 {
    ground { sprite: spriteset_ground(); }
    building {
        sprite: spriteset_EDIT_FILENAME_a_T0();
        zextent: 200; 
    }
}
spritelayout layout_EDIT_FILENAME_a_T1 {
    ground { sprite: spriteset_ground(); }
    building {
        sprite: spriteset_EDIT_FILENAME_a_T1();
        zextent: 200; 
    }
}
spritelayout layout_EDIT_FILENAME_a_T2 {
    ground { sprite: spriteset_ground(); }
    building {
        sprite: spriteset_EDIT_FILENAME_a_T2();
        zextent: 200; 
    }
}
spritelayout layout_EDIT_FILENAME_a_T3 {
    ground { sprite: spriteset_ground(); }
    building {
        sprite: spriteset_EDIT_FILENAME_a_T3();
        zextent: 200; 
    }
}
spritelayout layout_EDIT_FILENAME_a_T4 {
    ground { sprite: spriteset_ground(); }
    building {
        sprite: spriteset_EDIT_FILENAME_a_T4();
        zextent: 200; 
    }
}

switch (FEAT_OBJECTS, SELF, switch_EDIT_FILENAME_a_layout, [relative_pos]) {
    relative_coord(2, 0): layout_EDIT_FILENAME_a_T1;
    relative_coord(2, 1): layout_EDIT_FILENAME_a_T2;
    relative_coord(1, 1): layout_EDIT_FILENAME_a_T3;
    relative_coord(0, 1): layout_EDIT_FILENAME_a_T4;
    relative_coord(0, 0): layout_EDIT_FILENAME_a_T0;
    relative_coord(1, 0): layout_ground;
}

spritelayout layout_EDIT_FILENAME_b_T0 {
    ground { sprite: spriteset_ground(); }
    building {
        sprite: spriteset_EDIT_FILENAME_b_T0();
        zextent: 200; 
    }
}
spritelayout layout_EDIT_FILENAME_b_T1 {
    ground { sprite: spriteset_ground(); }
    building {
        sprite: spriteset_EDIT_FILENAME_b_T1();
        zextent: 200; 
    }
}
spritelayout layout_EDIT_FILENAME_b_T2 {
    ground { sprite: spriteset_ground(); }
    building {
        sprite: spriteset_EDIT_FILENAME_b_T2();
        zextent: 200; 
    }
}
spritelayout layout_EDIT_FILENAME_b_T3 {
    ground { sprite: spriteset_ground(); }
    building {
        sprite: spriteset_EDIT_FILENAME_b_T3();
        zextent: 200; 
    }
}
spritelayout layout_EDIT_FILENAME_b_T4 {
    ground { sprite: spriteset_ground(); }
    building {
        sprite: spriteset_EDIT_FILENAME_b_T4();
        zextent: 200; 
    }
}

switch (FEAT_OBJECTS, SELF, switch_EDIT_FILENAME_b_layout, [relative_pos]) {
    relative_coord(1, 0): layout_EDIT_FILENAME_b_T1;
    relative_coord(1, 1): layout_EDIT_FILENAME_b_T2;
    relative_coord(1, 2): layout_EDIT_FILENAME_b_T3;
    relative_coord(0, 2): layout_EDIT_FILENAME_b_T4;
    relative_coord(0, 0): layout_EDIT_FILENAME_b_T0;
    relative_coord(0, 1): layout_ground;
}

spritelayout layout_EDIT_FILENAME_a_menu {
    ground { sprite: spriteset_empty(); }
    building { sprite: spriteset_EDIT_FILENAME_a_menu(); }
}
spritelayout layout_EDIT_FILENAME_b_menu {
    ground { sprite: spriteset_empty(); }
    building { sprite: spriteset_EDIT_FILENAME_b_menu(); }
}

switch (FEAT_OBJECTS, SELF, switch_EDIT_FILENAME_views, [view]) {
    0: switch_EDIT_FILENAME_a_layout;
    1: switch_EDIT_FILENAME_b_layout;
}
switch (FEAT_OBJECTS, SELF, switch_EDIT_FILENAME_menu, [view]) {
    0: layout_EDIT_FILENAME_a_menu;   
    1: layout_EDIT_FILENAME_b_menu;
}

item (FEAT_OBJECTS, object_EDIT_FILENAME) {
    property {
        class:                  "EDIT_CLASS";
        classname:              string(STR_EDIT_CLASS);
        name:                   string(STR_OBJ_EDIT_FILENAME);
        climates_available:     ALL_CLIMATES;
        size:                   [3,2];
        build_cost_multiplier:  8;
        remove_cost_multiplier: 8;
        introduction_date:      0x00000000;
        end_of_life_date:       0xFFFFFFFF;
        object_flags:           param_remove == 0 ? bitmask(OBJ_FLAG_ANYTHING_REMOVE) : bitmask();
        height:                 8;
        num_views:              2;
    }
    graphics {
        default:         switch_EDIT_FILENAME_views;
        purchase:        switch_EDIT_FILENAME_menu;
    }
}]]

templates.template_3x2_4views = [[
// EDIT_FILENAME
spriteset (spriteset_EDIT_FILENAME_a_menu, ZOOM_LEVEL_NORMAL, BIT_DEPTH_32BPP, "gfx/EDIT_FILENAME.png") {tmpl_3x2_menu(0, EDIT_HEIGHT)}
spriteset (spriteset_EDIT_FILENAME_b_menu, ZOOM_LEVEL_NORMAL, BIT_DEPTH_32BPP, "gfx/EDIT_FILENAME.png") {tmpl_2x3_menu(165, EDIT_HEIGHT)}
spriteset (spriteset_EDIT_FILENAME_c_menu, ZOOM_LEVEL_NORMAL, BIT_DEPTH_32BPP, "gfx/EDIT_FILENAME.png") {tmpl_3x2_menu(330, EDIT_HEIGHT)}
spriteset (spriteset_EDIT_FILENAME_d_menu, ZOOM_LEVEL_NORMAL, BIT_DEPTH_32BPP, "gfx/EDIT_FILENAME.png") {tmpl_2x3_menu(495, EDIT_HEIGHT)}

spriteset (spriteset_EDIT_FILENAME_a_T0, ZOOM_LEVEL_NORMAL, BIT_DEPTH_32BPP, "gfx/EDIT_FILENAME.png") {tmpl_3x2_T0(0, EDIT_HEIGHT)}
spriteset (spriteset_EDIT_FILENAME_a_T1, ZOOM_LEVEL_NORMAL, BIT_DEPTH_32BPP, "gfx/EDIT_FILENAME.png") {tmpl_3x2_T1(0, EDIT_HEIGHT)}
spriteset (spriteset_EDIT_FILENAME_a_T2, ZOOM_LEVEL_NORMAL, BIT_DEPTH_32BPP, "gfx/EDIT_FILENAME.png") {tmpl_3x2_T2(0, EDIT_HEIGHT)}
spriteset (spriteset_EDIT_FILENAME_a_T3, ZOOM_LEVEL_NORMAL, BIT_DEPTH_32BPP, "gfx/EDIT_FILENAME.png") {tmpl_3x2_T3(0, EDIT_HEIGHT)}
spriteset (spriteset_EDIT_FILENAME_a_T4, ZOOM_LEVEL_NORMAL, BIT_DEPTH_32BPP, "gfx/EDIT_FILENAME.png") {tmpl_3x2_T4(0, EDIT_HEIGHT)}

spriteset (spriteset_EDIT_FILENAME_b_T0, ZOOM_LEVEL_NORMAL, BIT_DEPTH_32BPP, "gfx/EDIT_FILENAME.png") {tmpl_2x3_T0(165, EDIT_HEIGHT)}
spriteset (spriteset_EDIT_FILENAME_b_T1, ZOOM_LEVEL_NORMAL, BIT_DEPTH_32BPP, "gfx/EDIT_FILENAME.png") {tmpl_2x3_T1(165, EDIT_HEIGHT)}
spriteset (spriteset_EDIT_FILENAME_b_T2, ZOOM_LEVEL_NORMAL, BIT_DEPTH_32BPP, "gfx/EDIT_FILENAME.png") {tmpl_2x3_T2(165, EDIT_HEIGHT)}
spriteset (spriteset_EDIT_FILENAME_b_T3, ZOOM_LEVEL_NORMAL, BIT_DEPTH_32BPP, "gfx/EDIT_FILENAME.png") {tmpl_2x3_T3(165, EDIT_HEIGHT)}
spriteset (spriteset_EDIT_FILENAME_b_T4, ZOOM_LEVEL_NORMAL, BIT_DEPTH_32BPP, "gfx/EDIT_FILENAME.png") {tmpl_2x3_T4(165, EDIT_HEIGHT)}

spriteset (spriteset_EDIT_FILENAME_c_T0, ZOOM_LEVEL_NORMAL, BIT_DEPTH_32BPP, "gfx/EDIT_FILENAME.png") {tmpl_3x2_T0(330, EDIT_HEIGHT)}
spriteset (spriteset_EDIT_FILENAME_c_T1, ZOOM_LEVEL_NORMAL, BIT_DEPTH_32BPP, "gfx/EDIT_FILENAME.png") {tmpl_3x2_T1(330, EDIT_HEIGHT)}
spriteset (spriteset_EDIT_FILENAME_c_T2, ZOOM_LEVEL_NORMAL, BIT_DEPTH_32BPP, "gfx/EDIT_FILENAME.png") {tmpl_3x2_T2(330, EDIT_HEIGHT)}
spriteset (spriteset_EDIT_FILENAME_c_T3, ZOOM_LEVEL_NORMAL, BIT_DEPTH_32BPP, "gfx/EDIT_FILENAME.png") {tmpl_3x2_T3(330, EDIT_HEIGHT)}
spriteset (spriteset_EDIT_FILENAME_c_T4, ZOOM_LEVEL_NORMAL, BIT_DEPTH_32BPP, "gfx/EDIT_FILENAME.png") {tmpl_3x2_T4(330, EDIT_HEIGHT)}

spriteset (spriteset_EDIT_FILENAME_d_T0, ZOOM_LEVEL_NORMAL, BIT_DEPTH_32BPP, "gfx/EDIT_FILENAME.png") {tmpl_2x3_T0(495, EDIT_HEIGHT)}
spriteset (spriteset_EDIT_FILENAME_d_T1, ZOOM_LEVEL_NORMAL, BIT_DEPTH_32BPP, "gfx/EDIT_FILENAME.png") {tmpl_2x3_T1(495, EDIT_HEIGHT)}
spriteset (spriteset_EDIT_FILENAME_d_T2, ZOOM_LEVEL_NORMAL, BIT_DEPTH_32BPP, "gfx/EDIT_FILENAME.png") {tmpl_2x3_T2(495, EDIT_HEIGHT)}
spriteset (spriteset_EDIT_FILENAME_d_T3, ZOOM_LEVEL_NORMAL, BIT_DEPTH_32BPP, "gfx/EDIT_FILENAME.png") {tmpl_2x3_T3(495, EDIT_HEIGHT)}
spriteset (spriteset_EDIT_FILENAME_d_T4, ZOOM_LEVEL_NORMAL, BIT_DEPTH_32BPP, "gfx/EDIT_FILENAME.png") {tmpl_2x3_T4(495, EDIT_HEIGHT)}

spritelayout layout_EDIT_FILENAME_a_T0 {
    ground { sprite: spriteset_ground(); }
    building {
        sprite: spriteset_EDIT_FILENAME_a_T0();
        zextent: 200; 
    }
}
spritelayout layout_EDIT_FILENAME_a_T1 {
    ground { sprite: spriteset_ground(); }
    building {
        sprite: spriteset_EDIT_FILENAME_a_T1();
        zextent: 200; 
    }
}
spritelayout layout_EDIT_FILENAME_a_T2 {
    ground { sprite: spriteset_ground(); }
    building {
        sprite: spriteset_EDIT_FILENAME_a_T2();
        zextent: 200; 
    }
}
spritelayout layout_EDIT_FILENAME_a_T3 {
    ground { sprite: spriteset_ground(); }
    building {
        sprite: spriteset_EDIT_FILENAME_a_T3();
        zextent: 200; 
    }
}
spritelayout layout_EDIT_FILENAME_a_T4 {
    ground { sprite: spriteset_ground(); }
    building {
        sprite: spriteset_EDIT_FILENAME_a_T4();
        zextent: 200; 
    }
}

switch (FEAT_OBJECTS, SELF, switch_EDIT_FILENAME_a_layout, [relative_pos]) {
    relative_coord(2, 0): layout_EDIT_FILENAME_a_T1;
    relative_coord(2, 1): layout_EDIT_FILENAME_a_T2;
    relative_coord(1, 1): layout_EDIT_FILENAME_a_T3;
    relative_coord(0, 1): layout_EDIT_FILENAME_a_T4;
    relative_coord(0, 0): layout_EDIT_FILENAME_a_T0;
    relative_coord(1, 0): layout_ground;
}

spritelayout layout_EDIT_FILENAME_b_T0 {
    ground { sprite: spriteset_ground(); }
    building {
        sprite: spriteset_EDIT_FILENAME_b_T0();
        zextent: 200; 
    }
}
spritelayout layout_EDIT_FILENAME_b_T1 {
    ground { sprite: spriteset_ground(); }
    building {
        sprite: spriteset_EDIT_FILENAME_b_T1();
        zextent: 200; 
    }
}
spritelayout layout_EDIT_FILENAME_b_T2 {
    ground { sprite: spriteset_ground(); }
    building {
        sprite: spriteset_EDIT_FILENAME_b_T2();
        zextent: 200; 
    }
}
spritelayout layout_EDIT_FILENAME_b_T3 {
    ground { sprite: spriteset_ground(); }
    building {
        sprite: spriteset_EDIT_FILENAME_b_T3();
        zextent: 200; 
    }
}
spritelayout layout_EDIT_FILENAME_b_T4 {
    ground { sprite: spriteset_ground(); }
    building {
        sprite: spriteset_EDIT_FILENAME_b_T4();
        zextent: 200; 
    }
}

switch (FEAT_OBJECTS, SELF, switch_EDIT_FILENAME_b_layout, [relative_pos]) {
    relative_coord(1, 0): layout_EDIT_FILENAME_b_T1;
    relative_coord(1, 1): layout_EDIT_FILENAME_b_T2;
    relative_coord(1, 2): layout_EDIT_FILENAME_b_T3;
    relative_coord(0, 2): layout_EDIT_FILENAME_b_T4;
    relative_coord(0, 0): layout_EDIT_FILENAME_b_T0;
    relative_coord(0, 1): layout_ground;
}

spritelayout layout_EDIT_FILENAME_c_T0 {
    ground { sprite: spriteset_ground(); }
    building {
        sprite: spriteset_EDIT_FILENAME_c_T0();
        zextent: 200; 
    }
}
spritelayout layout_EDIT_FILENAME_c_T1 {
    ground { sprite: spriteset_ground(); }
    building {
        sprite: spriteset_EDIT_FILENAME_c_T1();
        zextent: 200; 
    }
}
spritelayout layout_EDIT_FILENAME_c_T2 {
    ground { sprite: spriteset_ground(); }
    building {
        sprite: spriteset_EDIT_FILENAME_c_T2();
        zextent: 200; 
    }
}
spritelayout layout_EDIT_FILENAME_c_T3 {
    ground { sprite: spriteset_ground(); }
    building {
        sprite: spriteset_EDIT_FILENAME_c_T3();
        zextent: 200; 
    }
}
spritelayout layout_EDIT_FILENAME_c_T4 {
    ground { sprite: spriteset_ground(); }
    building {
        sprite: spriteset_EDIT_FILENAME_c_T4();
        zextent: 200; 
    }
}

switch (FEAT_OBJECTS, SELF, switch_EDIT_FILENAME_c_layout, [relative_pos]) {
    relative_coord(2, 0): layout_EDIT_FILENAME_c_T1;
    relative_coord(2, 1): layout_EDIT_FILENAME_c_T2;
    relative_coord(1, 1): layout_EDIT_FILENAME_c_T3;
    relative_coord(0, 1): layout_EDIT_FILENAME_c_T4;
    relative_coord(0, 0): layout_EDIT_FILENAME_c_T0;
    relative_coord(1, 0): layout_ground;
}

spritelayout layout_EDIT_FILENAME_d_T0 {
    ground { sprite: spriteset_ground(); }
    building {
        sprite: spriteset_EDIT_FILENAME_d_T0();
        zextent: 200; 
    }
}
spritelayout layout_EDIT_FILENAME_d_T1 {
    ground { sprite: spriteset_ground(); }
    building {
        sprite: spriteset_EDIT_FILENAME_d_T1();
        zextent: 200; 
    }
}
spritelayout layout_EDIT_FILENAME_d_T2 {
    ground { sprite: spriteset_ground(); }
    building {
        sprite: spriteset_EDIT_FILENAME_d_T2();
        zextent: 200; 
    }
}
spritelayout layout_EDIT_FILENAME_d_T3 {
    ground { sprite: spriteset_ground(); }
    building {
        sprite: spriteset_EDIT_FILENAME_d_T3();
        zextent: 200; 
    }
}
spritelayout layout_EDIT_FILENAME_d_T4 {
    ground { sprite: spriteset_ground(); }
    building {
        sprite: spriteset_EDIT_FILENAME_d_T4();
        zextent: 200; 
    }
}

switch (FEAT_OBJECTS, SELF, switch_EDIT_FILENAME_d_layout, [relative_pos]) {
    relative_coord(1, 0): layout_EDIT_FILENAME_d_T1;
    relative_coord(1, 1): layout_EDIT_FILENAME_d_T2;
    relative_coord(1, 2): layout_EDIT_FILENAME_d_T3;
    relative_coord(0, 2): layout_EDIT_FILENAME_d_T4;
    relative_coord(0, 0): layout_EDIT_FILENAME_d_T0;
    relative_coord(0, 1): layout_ground;
}

spritelayout layout_EDIT_FILENAME_a_menu {
    ground { sprite: spriteset_empty(); }
    building { sprite: spriteset_EDIT_FILENAME_a_menu(); }
}
spritelayout layout_EDIT_FILENAME_b_menu {
    ground { sprite: spriteset_empty(); }
    building { sprite: spriteset_EDIT_FILENAME_b_menu(); }
}
spritelayout layout_EDIT_FILENAME_c_menu {
    ground { sprite: spriteset_empty(); }
    building { sprite: spriteset_EDIT_FILENAME_c_menu(); }
}
spritelayout layout_EDIT_FILENAME_d_menu {
    ground { sprite: spriteset_empty(); }
    building { sprite: spriteset_EDIT_FILENAME_d_menu(); }
}

switch (FEAT_OBJECTS, SELF, switch_EDIT_FILENAME_views, [view]) {
    0: switch_EDIT_FILENAME_a_layout;
    1: switch_EDIT_FILENAME_b_layout;
    2: switch_EDIT_FILENAME_c_layout;
    3: switch_EDIT_FILENAME_d_layout;
}
switch (FEAT_OBJECTS, SELF, switch_EDIT_FILENAME_menu, [view]) {
    0: layout_EDIT_FILENAME_a_menu;   
    1: layout_EDIT_FILENAME_b_menu;
    2: layout_EDIT_FILENAME_c_menu;
    3: layout_EDIT_FILENAME_d_menu;
}

item (FEAT_OBJECTS, object_EDIT_FILENAME) {
    property {
        class:                  "EDIT_CLASS";
        classname:              string(STR_EDIT_CLASS);
        name:                   string(STR_OBJ_EDIT_FILENAME);
        climates_available:     ALL_CLIMATES;
        size:                   [3,2];
        build_cost_multiplier:  8;
        remove_cost_multiplier: 8;
        introduction_date:      0x00000000;
        end_of_life_date:       0xFFFFFFFF;
        object_flags:           param_remove == 0 ? bitmask(OBJ_FLAG_ANYTHING_REMOVE) : bitmask();
        height:                 8;
        num_views:              4;
    }
    graphics {
        default:         switch_EDIT_FILENAME_views;
        purchase:        switch_EDIT_FILENAME_menu;
    }
}]]


templates.template_3x3_1views = [[
// EDIT_FILENAME
spriteset (spriteset_EDIT_FILENAME_a_menu, ZOOM_LEVEL_NORMAL, BIT_DEPTH_32BPP, "gfx/EDIT_FILENAME.png") {tmpl_3x3_menu(0, EDIT_HEIGHT)}

spriteset (spriteset_EDIT_FILENAME_a_T0, ZOOM_LEVEL_NORMAL, BIT_DEPTH_32BPP, "gfx/EDIT_FILENAME.png") {tmpl_3x3_T0(0, EDIT_HEIGHT)}
spriteset (spriteset_EDIT_FILENAME_a_T1, ZOOM_LEVEL_NORMAL, BIT_DEPTH_32BPP, "gfx/EDIT_FILENAME.png") {tmpl_3x3_T1(0, EDIT_HEIGHT)}
spriteset (spriteset_EDIT_FILENAME_a_T2, ZOOM_LEVEL_NORMAL, BIT_DEPTH_32BPP, "gfx/EDIT_FILENAME.png") {tmpl_3x3_T2(0, EDIT_HEIGHT)}
spriteset (spriteset_EDIT_FILENAME_a_T3, ZOOM_LEVEL_NORMAL, BIT_DEPTH_32BPP, "gfx/EDIT_FILENAME.png") {tmpl_3x3_T3(0, EDIT_HEIGHT)}
spriteset (spriteset_EDIT_FILENAME_a_T4, ZOOM_LEVEL_NORMAL, BIT_DEPTH_32BPP, "gfx/EDIT_FILENAME.png") {tmpl_3x3_T4(0, EDIT_HEIGHT)}
spriteset (spriteset_EDIT_FILENAME_a_T5, ZOOM_LEVEL_NORMAL, BIT_DEPTH_32BPP, "gfx/EDIT_FILENAME.png") {tmpl_3x3_T5(0, EDIT_HEIGHT)}

spritelayout layout_EDIT_FILENAME_a_T0 {
    ground { sprite: spriteset_ground(); }
    building {
        sprite: spriteset_EDIT_FILENAME_a_T0();
        zextent: 200; 
    }
}
spritelayout layout_EDIT_FILENAME_a_T1 {
    ground { sprite: spriteset_ground(); }
    building {
        sprite: spriteset_EDIT_FILENAME_a_T1();
        zextent: 200; 
    }
}
spritelayout layout_EDIT_FILENAME_a_T2 {
    ground { sprite: spriteset_ground(); }
    building {
        sprite: spriteset_EDIT_FILENAME_a_T2();
        zextent: 200; 
    }
}
spritelayout layout_EDIT_FILENAME_a_T3 {
    ground { sprite: spriteset_ground(); }
    building {
        sprite: spriteset_EDIT_FILENAME_a_T3();
        zextent: 200; 
    }
}
spritelayout layout_EDIT_FILENAME_a_T4 {
    ground { sprite: spriteset_ground(); }
    building {
        sprite: spriteset_EDIT_FILENAME_a_T4();
        zextent: 200; 
    }
}
spritelayout layout_EDIT_FILENAME_a_T5 {
    ground { sprite: spriteset_ground(); }
    building {
        sprite: spriteset_EDIT_FILENAME_a_T5();
        zextent: 200; 
    }
}

switch (FEAT_OBJECTS, SELF, switch_EDIT_FILENAME_a_layout, [relative_pos]) {
    relative_coord(2, 0): layout_EDIT_FILENAME_a_T1;
    relative_coord(2, 1): layout_EDIT_FILENAME_a_T2;
    relative_coord(2, 2): layout_EDIT_FILENAME_a_T3;
    relative_coord(1, 2): layout_EDIT_FILENAME_a_T4;
    relative_coord(0, 2): layout_EDIT_FILENAME_a_T5;
    relative_coord(0, 0): layout_EDIT_FILENAME_a_T0;
    relative_coord(1, 0): layout_ground;
    relative_coord(1, 1): layout_ground;
    relative_coord(0, 1): layout_ground;
}

spritelayout layout_EDIT_FILENAME_a_menu {
    ground { sprite: spriteset_empty(); }
    building { sprite: spriteset_EDIT_FILENAME_a_menu(); }
}

switch (FEAT_OBJECTS, SELF, switch_EDIT_FILENAME_views, [view]) {
    0: switch_EDIT_FILENAME_a_layout;
}
switch (FEAT_OBJECTS, SELF, switch_EDIT_FILENAME_menu, [view]) {
    0: layout_EDIT_FILENAME_a_menu;
}

item (FEAT_OBJECTS, object_EDIT_FILENAME) {
    property {
        class:                  "EDIT_CLASS";
        classname:              string(STR_EDIT_CLASS);
        name:                   string(STR_OBJ_EDIT_FILENAME);
        climates_available:     ALL_CLIMATES;
        size:                   [3,3];
        build_cost_multiplier:  8;
        remove_cost_multiplier: 8;
        introduction_date:      0x00000000;
        end_of_life_date:       0xFFFFFFFF;
        object_flags:           param_remove == 0 ? bitmask(OBJ_FLAG_ANYTHING_REMOVE) : bitmask();
        height:                 8;
        num_views:              1;
    }
    graphics {
        default:         switch_EDIT_FILENAME_views;
        purchase:        switch_EDIT_FILENAME_menu;
    }
}]]

templates.template_3x3_2views = [[
// EDIT_FILENAME
spriteset (spriteset_EDIT_FILENAME_a_menu, ZOOM_LEVEL_NORMAL, BIT_DEPTH_32BPP, "gfx/EDIT_FILENAME.png") {tmpl_3x3_menu(0, EDIT_HEIGHT)}
spriteset (spriteset_EDIT_FILENAME_b_menu, ZOOM_LEVEL_NORMAL, BIT_DEPTH_32BPP, "gfx/EDIT_FILENAME.png") {tmpl_3x3_menu(197, EDIT_HEIGHT)}

spriteset (spriteset_EDIT_FILENAME_a_T0, ZOOM_LEVEL_NORMAL, BIT_DEPTH_32BPP, "gfx/EDIT_FILENAME.png") {tmpl_3x3_T0(0, EDIT_HEIGHT)}
spriteset (spriteset_EDIT_FILENAME_a_T1, ZOOM_LEVEL_NORMAL, BIT_DEPTH_32BPP, "gfx/EDIT_FILENAME.png") {tmpl_3x3_T1(0, EDIT_HEIGHT)}
spriteset (spriteset_EDIT_FILENAME_a_T2, ZOOM_LEVEL_NORMAL, BIT_DEPTH_32BPP, "gfx/EDIT_FILENAME.png") {tmpl_3x3_T2(0, EDIT_HEIGHT)}
spriteset (spriteset_EDIT_FILENAME_a_T3, ZOOM_LEVEL_NORMAL, BIT_DEPTH_32BPP, "gfx/EDIT_FILENAME.png") {tmpl_3x3_T3(0, EDIT_HEIGHT)}
spriteset (spriteset_EDIT_FILENAME_a_T4, ZOOM_LEVEL_NORMAL, BIT_DEPTH_32BPP, "gfx/EDIT_FILENAME.png") {tmpl_3x3_T4(0, EDIT_HEIGHT)}
spriteset (spriteset_EDIT_FILENAME_a_T5, ZOOM_LEVEL_NORMAL, BIT_DEPTH_32BPP, "gfx/EDIT_FILENAME.png") {tmpl_3x3_T5(0, EDIT_HEIGHT)}

spriteset (spriteset_EDIT_FILENAME_b_T0, ZOOM_LEVEL_NORMAL, BIT_DEPTH_32BPP, "gfx/EDIT_FILENAME.png") {tmpl_3x3_T0(197, EDIT_HEIGHT)}
spriteset (spriteset_EDIT_FILENAME_b_T1, ZOOM_LEVEL_NORMAL, BIT_DEPTH_32BPP, "gfx/EDIT_FILENAME.png") {tmpl_3x3_T1(197, EDIT_HEIGHT)}
spriteset (spriteset_EDIT_FILENAME_b_T2, ZOOM_LEVEL_NORMAL, BIT_DEPTH_32BPP, "gfx/EDIT_FILENAME.png") {tmpl_3x3_T2(197, EDIT_HEIGHT)}
spriteset (spriteset_EDIT_FILENAME_b_T3, ZOOM_LEVEL_NORMAL, BIT_DEPTH_32BPP, "gfx/EDIT_FILENAME.png") {tmpl_3x3_T3(197, EDIT_HEIGHT)}
spriteset (spriteset_EDIT_FILENAME_b_T4, ZOOM_LEVEL_NORMAL, BIT_DEPTH_32BPP, "gfx/EDIT_FILENAME.png") {tmpl_3x3_T4(197, EDIT_HEIGHT)}
spriteset (spriteset_EDIT_FILENAME_b_T5, ZOOM_LEVEL_NORMAL, BIT_DEPTH_32BPP, "gfx/EDIT_FILENAME.png") {tmpl_3x3_T5(197, EDIT_HEIGHT)}

spritelayout layout_EDIT_FILENAME_a_T0 {
    ground { sprite: spriteset_ground(); }
    building {
        sprite: spriteset_EDIT_FILENAME_a_T0();
        zextent: 200; 
    }
}
spritelayout layout_EDIT_FILENAME_a_T1 {
    ground { sprite: spriteset_ground(); }
    building {
        sprite: spriteset_EDIT_FILENAME_a_T1();
        zextent: 200; 
    }
}
spritelayout layout_EDIT_FILENAME_a_T2 {
    ground { sprite: spriteset_ground(); }
    building {
        sprite: spriteset_EDIT_FILENAME_a_T2();
        zextent: 200; 
    }
}
spritelayout layout_EDIT_FILENAME_a_T3 {
    ground { sprite: spriteset_ground(); }
    building {
        sprite: spriteset_EDIT_FILENAME_a_T3();
        zextent: 200; 
    }
}
spritelayout layout_EDIT_FILENAME_a_T4 {
    ground { sprite: spriteset_ground(); }
    building {
        sprite: spriteset_EDIT_FILENAME_a_T4();
        zextent: 200; 
    }
}
spritelayout layout_EDIT_FILENAME_a_T5 {
    ground { sprite: spriteset_ground(); }
    building {
        sprite: spriteset_EDIT_FILENAME_a_T5();
        zextent: 200; 
    }
}

switch (FEAT_OBJECTS, SELF, switch_EDIT_FILENAME_a_layout, [relative_pos]) {
    relative_coord(2, 0): layout_EDIT_FILENAME_a_T1;
    relative_coord(2, 1): layout_EDIT_FILENAME_a_T2;
    relative_coord(2, 2): layout_EDIT_FILENAME_a_T3;
    relative_coord(1, 2): layout_EDIT_FILENAME_a_T4;
    relative_coord(0, 2): layout_EDIT_FILENAME_a_T5;
    relative_coord(0, 0): layout_EDIT_FILENAME_a_T0;
    relative_coord(1, 0): layout_ground;
    relative_coord(1, 1): layout_ground;
    relative_coord(0, 1): layout_ground;
}

spritelayout layout_EDIT_FILENAME_b_T0 {
    ground { sprite: spriteset_ground(); }
    building {
        sprite: spriteset_EDIT_FILENAME_b_T0();
        zextent: 200; 
    }
}
spritelayout layout_EDIT_FILENAME_b_T1 {
    ground { sprite: spriteset_ground(); }
    building {
        sprite: spriteset_EDIT_FILENAME_b_T1();
        zextent: 200; 
    }
}
spritelayout layout_EDIT_FILENAME_b_T2 {
    ground { sprite: spriteset_ground(); }
    building {
        sprite: spriteset_EDIT_FILENAME_b_T2();
        zextent: 200; 
    }
}
spritelayout layout_EDIT_FILENAME_b_T3 {
    ground { sprite: spriteset_ground(); }
    building {
        sprite: spriteset_EDIT_FILENAME_b_T3();
        zextent: 200; 
    }
}
spritelayout layout_EDIT_FILENAME_b_T4 {
    ground { sprite: spriteset_ground(); }
    building {
        sprite: spriteset_EDIT_FILENAME_b_T4();
        zextent: 200; 
    }
}
spritelayout layout_EDIT_FILENAME_b_T5 {
    ground { sprite: spriteset_ground(); }
    building {
        sprite: spriteset_EDIT_FILENAME_b_T5();
        zextent: 200; 
    }
}

switch (FEAT_OBJECTS, SELF, switch_EDIT_FILENAME_b_layout, [relative_pos]) {
    relative_coord(2, 0): layout_EDIT_FILENAME_b_T1;
    relative_coord(2, 1): layout_EDIT_FILENAME_b_T2;
    relative_coord(2, 2): layout_EDIT_FILENAME_b_T3;
    relative_coord(1, 2): layout_EDIT_FILENAME_b_T4;
    relative_coord(0, 2): layout_EDIT_FILENAME_b_T5;
    relative_coord(0, 0): layout_EDIT_FILENAME_b_T0;
    relative_coord(1, 0): layout_ground;
    relative_coord(1, 1): layout_ground;
    relative_coord(0, 1): layout_ground;
}

spritelayout layout_EDIT_FILENAME_a_menu {
    ground { sprite: spriteset_empty(); }
    building { sprite: spriteset_EDIT_FILENAME_a_menu(); }
}
spritelayout layout_EDIT_FILENAME_b_menu {
    ground { sprite: spriteset_empty(); }
    building { sprite: spriteset_EDIT_FILENAME_b_menu(); }
}

switch (FEAT_OBJECTS, SELF, switch_EDIT_FILENAME_views, [view]) {
    0: switch_EDIT_FILENAME_a_layout;
    1: switch_EDIT_FILENAME_b_layout;
}
switch (FEAT_OBJECTS, SELF, switch_EDIT_FILENAME_menu, [view]) {
    0: layout_EDIT_FILENAME_a_menu;   
    1: layout_EDIT_FILENAME_b_menu;
}

item (FEAT_OBJECTS, object_EDIT_FILENAME) {
    property {
        class:                  "EDIT_CLASS";
        classname:              string(STR_EDIT_CLASS);
        name:                   string(STR_OBJ_EDIT_FILENAME);
        climates_available:     ALL_CLIMATES;
        size:                   [3,3];
        build_cost_multiplier:  8;
        remove_cost_multiplier: 8;
        introduction_date:      0x00000000;
        end_of_life_date:       0xFFFFFFFF;
        object_flags:           param_remove == 0 ? bitmask(OBJ_FLAG_ANYTHING_REMOVE) : bitmask();
        height:                 8;
        num_views:              2;
    }
    graphics {
        default:         switch_EDIT_FILENAME_views;
        purchase:        switch_EDIT_FILENAME_menu;
    }
}]]

templates.template_3x3_4views = [[
// EDIT_FILENAME
spriteset (spriteset_EDIT_FILENAME_a_menu, ZOOM_LEVEL_NORMAL, BIT_DEPTH_32BPP, "gfx/EDIT_FILENAME.png") {tmpl_3x3_menu(0, EDIT_HEIGHT)}
spriteset (spriteset_EDIT_FILENAME_b_menu, ZOOM_LEVEL_NORMAL, BIT_DEPTH_32BPP, "gfx/EDIT_FILENAME.png") {tmpl_3x3_menu(197, EDIT_HEIGHT)}
spriteset (spriteset_EDIT_FILENAME_c_menu, ZOOM_LEVEL_NORMAL, BIT_DEPTH_32BPP, "gfx/EDIT_FILENAME.png") {tmpl_3x3_menu(394, EDIT_HEIGHT)}
spriteset (spriteset_EDIT_FILENAME_d_menu, ZOOM_LEVEL_NORMAL, BIT_DEPTH_32BPP, "gfx/EDIT_FILENAME.png") {tmpl_3x3_menu(591, EDIT_HEIGHT)}

spriteset (spriteset_EDIT_FILENAME_a_T0, ZOOM_LEVEL_NORMAL, BIT_DEPTH_32BPP, "gfx/EDIT_FILENAME.png") {tmpl_3x3_T0(0, EDIT_HEIGHT)}
spriteset (spriteset_EDIT_FILENAME_a_T1, ZOOM_LEVEL_NORMAL, BIT_DEPTH_32BPP, "gfx/EDIT_FILENAME.png") {tmpl_3x3_T1(0, EDIT_HEIGHT)}
spriteset (spriteset_EDIT_FILENAME_a_T2, ZOOM_LEVEL_NORMAL, BIT_DEPTH_32BPP, "gfx/EDIT_FILENAME.png") {tmpl_3x3_T2(0, EDIT_HEIGHT)}
spriteset (spriteset_EDIT_FILENAME_a_T3, ZOOM_LEVEL_NORMAL, BIT_DEPTH_32BPP, "gfx/EDIT_FILENAME.png") {tmpl_3x3_T3(0, EDIT_HEIGHT)}
spriteset (spriteset_EDIT_FILENAME_a_T4, ZOOM_LEVEL_NORMAL, BIT_DEPTH_32BPP, "gfx/EDIT_FILENAME.png") {tmpl_3x3_T4(0, EDIT_HEIGHT)}
spriteset (spriteset_EDIT_FILENAME_a_T5, ZOOM_LEVEL_NORMAL, BIT_DEPTH_32BPP, "gfx/EDIT_FILENAME.png") {tmpl_3x3_T5(0, EDIT_HEIGHT)}

spriteset (spriteset_EDIT_FILENAME_b_T0, ZOOM_LEVEL_NORMAL, BIT_DEPTH_32BPP, "gfx/EDIT_FILENAME.png") {tmpl_3x3_T0(197, EDIT_HEIGHT)}
spriteset (spriteset_EDIT_FILENAME_b_T1, ZOOM_LEVEL_NORMAL, BIT_DEPTH_32BPP, "gfx/EDIT_FILENAME.png") {tmpl_3x3_T1(197, EDIT_HEIGHT)}
spriteset (spriteset_EDIT_FILENAME_b_T2, ZOOM_LEVEL_NORMAL, BIT_DEPTH_32BPP, "gfx/EDIT_FILENAME.png") {tmpl_3x3_T2(197, EDIT_HEIGHT)}
spriteset (spriteset_EDIT_FILENAME_b_T3, ZOOM_LEVEL_NORMAL, BIT_DEPTH_32BPP, "gfx/EDIT_FILENAME.png") {tmpl_3x3_T3(197, EDIT_HEIGHT)}
spriteset (spriteset_EDIT_FILENAME_b_T4, ZOOM_LEVEL_NORMAL, BIT_DEPTH_32BPP, "gfx/EDIT_FILENAME.png") {tmpl_3x3_T4(197, EDIT_HEIGHT)}
spriteset (spriteset_EDIT_FILENAME_b_T5, ZOOM_LEVEL_NORMAL, BIT_DEPTH_32BPP, "gfx/EDIT_FILENAME.png") {tmpl_3x3_T5(197, EDIT_HEIGHT)}

spriteset (spriteset_EDIT_FILENAME_c_T0, ZOOM_LEVEL_NORMAL, BIT_DEPTH_32BPP, "gfx/EDIT_FILENAME.png") {tmpl_3x3_T0(394, EDIT_HEIGHT)}
spriteset (spriteset_EDIT_FILENAME_c_T1, ZOOM_LEVEL_NORMAL, BIT_DEPTH_32BPP, "gfx/EDIT_FILENAME.png") {tmpl_3x3_T1(394, EDIT_HEIGHT)}
spriteset (spriteset_EDIT_FILENAME_c_T2, ZOOM_LEVEL_NORMAL, BIT_DEPTH_32BPP, "gfx/EDIT_FILENAME.png") {tmpl_3x3_T2(394, EDIT_HEIGHT)}
spriteset (spriteset_EDIT_FILENAME_c_T3, ZOOM_LEVEL_NORMAL, BIT_DEPTH_32BPP, "gfx/EDIT_FILENAME.png") {tmpl_3x3_T3(394, EDIT_HEIGHT)}
spriteset (spriteset_EDIT_FILENAME_c_T4, ZOOM_LEVEL_NORMAL, BIT_DEPTH_32BPP, "gfx/EDIT_FILENAME.png") {tmpl_3x3_T4(394, EDIT_HEIGHT)}
spriteset (spriteset_EDIT_FILENAME_c_T5, ZOOM_LEVEL_NORMAL, BIT_DEPTH_32BPP, "gfx/EDIT_FILENAME.png") {tmpl_3x3_T5(394, EDIT_HEIGHT)}

spriteset (spriteset_EDIT_FILENAME_d_T0, ZOOM_LEVEL_NORMAL, BIT_DEPTH_32BPP, "gfx/EDIT_FILENAME.png") {tmpl_3x3_T0(591, EDIT_HEIGHT)}
spriteset (spriteset_EDIT_FILENAME_d_T1, ZOOM_LEVEL_NORMAL, BIT_DEPTH_32BPP, "gfx/EDIT_FILENAME.png") {tmpl_3x3_T1(591, EDIT_HEIGHT)}
spriteset (spriteset_EDIT_FILENAME_d_T2, ZOOM_LEVEL_NORMAL, BIT_DEPTH_32BPP, "gfx/EDIT_FILENAME.png") {tmpl_3x3_T2(591, EDIT_HEIGHT)}
spriteset (spriteset_EDIT_FILENAME_d_T3, ZOOM_LEVEL_NORMAL, BIT_DEPTH_32BPP, "gfx/EDIT_FILENAME.png") {tmpl_3x3_T3(591, EDIT_HEIGHT)}
spriteset (spriteset_EDIT_FILENAME_d_T4, ZOOM_LEVEL_NORMAL, BIT_DEPTH_32BPP, "gfx/EDIT_FILENAME.png") {tmpl_3x3_T4(591, EDIT_HEIGHT)}
spriteset (spriteset_EDIT_FILENAME_d_T5, ZOOM_LEVEL_NORMAL, BIT_DEPTH_32BPP, "gfx/EDIT_FILENAME.png") {tmpl_3x3_T5(591, EDIT_HEIGHT)}

spritelayout layout_EDIT_FILENAME_a_T0 {
    ground { sprite: spriteset_ground(); }
    building {
        sprite: spriteset_EDIT_FILENAME_a_T0();
        zextent: 200; 
    }
}
spritelayout layout_EDIT_FILENAME_a_T1 {
    ground { sprite: spriteset_ground(); }
    building {
        sprite: spriteset_EDIT_FILENAME_a_T1();
        zextent: 200; 
    }
}
spritelayout layout_EDIT_FILENAME_a_T2 {
    ground { sprite: spriteset_ground(); }
    building {
        sprite: spriteset_EDIT_FILENAME_a_T2();
        zextent: 200; 
    }
}
spritelayout layout_EDIT_FILENAME_a_T3 {
    ground { sprite: spriteset_ground(); }
    building {
        sprite: spriteset_EDIT_FILENAME_a_T3();
        zextent: 200; 
    }
}
spritelayout layout_EDIT_FILENAME_a_T4 {
    ground { sprite: spriteset_ground(); }
    building {
        sprite: spriteset_EDIT_FILENAME_a_T4();
        zextent: 200; 
    }
}
spritelayout layout_EDIT_FILENAME_a_T5 {
    ground { sprite: spriteset_ground(); }
    building {
        sprite: spriteset_EDIT_FILENAME_a_T5();
        zextent: 200; 
    }
}

switch (FEAT_OBJECTS, SELF, switch_EDIT_FILENAME_a_layout, [relative_pos]) {
    relative_coord(2, 0): layout_EDIT_FILENAME_a_T1;
    relative_coord(2, 1): layout_EDIT_FILENAME_a_T2;
    relative_coord(2, 2): layout_EDIT_FILENAME_a_T3;
    relative_coord(1, 2): layout_EDIT_FILENAME_a_T4;
    relative_coord(0, 2): layout_EDIT_FILENAME_a_T5;
    relative_coord(0, 0): layout_EDIT_FILENAME_a_T0;
    relative_coord(1, 0): layout_ground;
    relative_coord(1, 1): layout_ground;
    relative_coord(0, 1): layout_ground;
}

spritelayout layout_EDIT_FILENAME_b_T0 {
    ground { sprite: spriteset_ground(); }
    building {
        sprite: spriteset_EDIT_FILENAME_b_T0();
        zextent: 200; 
    }
}
spritelayout layout_EDIT_FILENAME_b_T1 {
    ground { sprite: spriteset_ground(); }
    building {
        sprite: spriteset_EDIT_FILENAME_b_T1();
        zextent: 200; 
    }
}
spritelayout layout_EDIT_FILENAME_b_T2 {
    ground { sprite: spriteset_ground(); }
    building {
        sprite: spriteset_EDIT_FILENAME_b_T2();
        zextent: 200; 
    }
}
spritelayout layout_EDIT_FILENAME_b_T3 {
    ground { sprite: spriteset_ground(); }
    building {
        sprite: spriteset_EDIT_FILENAME_b_T3();
        zextent: 200; 
    }
}
spritelayout layout_EDIT_FILENAME_b_T4 {
    ground { sprite: spriteset_ground(); }
    building {
        sprite: spriteset_EDIT_FILENAME_b_T4();
        zextent: 200; 
    }
}
spritelayout layout_EDIT_FILENAME_b_T5 {
    ground { sprite: spriteset_ground(); }
    building {
        sprite: spriteset_EDIT_FILENAME_b_T5();
        zextent: 200; 
    }
}

switch (FEAT_OBJECTS, SELF, switch_EDIT_FILENAME_b_layout, [relative_pos]) {
    relative_coord(2, 0): layout_EDIT_FILENAME_b_T1;
    relative_coord(2, 1): layout_EDIT_FILENAME_b_T2;
    relative_coord(2, 2): layout_EDIT_FILENAME_b_T3;
    relative_coord(1, 2): layout_EDIT_FILENAME_b_T4;
    relative_coord(0, 2): layout_EDIT_FILENAME_b_T5;
    relative_coord(0, 0): layout_EDIT_FILENAME_b_T0;
    relative_coord(1, 0): layout_ground;
    relative_coord(1, 1): layout_ground;
    relative_coord(0, 1): layout_ground;
}

spritelayout layout_EDIT_FILENAME_c_T0 {
    ground { sprite: spriteset_ground(); }
    building {
        sprite: spriteset_EDIT_FILENAME_c_T0();
        zextent: 200; 
    }
}
spritelayout layout_EDIT_FILENAME_c_T1 {
    ground { sprite: spriteset_ground(); }
    building {
        sprite: spriteset_EDIT_FILENAME_c_T1();
        zextent: 200; 
    }
}
spritelayout layout_EDIT_FILENAME_c_T2 {
    ground { sprite: spriteset_ground(); }
    building {
        sprite: spriteset_EDIT_FILENAME_c_T2();
        zextent: 200; 
    }
}
spritelayout layout_EDIT_FILENAME_c_T3 {
    ground { sprite: spriteset_ground(); }
    building {
        sprite: spriteset_EDIT_FILENAME_c_T3();
        zextent: 200; 
    }
}
spritelayout layout_EDIT_FILENAME_c_T4 {
    ground { sprite: spriteset_ground(); }
    building {
        sprite: spriteset_EDIT_FILENAME_c_T4();
        zextent: 200; 
    }
}
spritelayout layout_EDIT_FILENAME_c_T5 {
    ground { sprite: spriteset_ground(); }
    building {
        sprite: spriteset_EDIT_FILENAME_c_T5();
        zextent: 200; 
    }
}

switch (FEAT_OBJECTS, SELF, switch_EDIT_FILENAME_c_layout, [relative_pos]) {
    relative_coord(2, 0): layout_EDIT_FILENAME_c_T1;
    relative_coord(2, 1): layout_EDIT_FILENAME_c_T2;
    relative_coord(2, 2): layout_EDIT_FILENAME_c_T3;
    relative_coord(1, 2): layout_EDIT_FILENAME_c_T4;
    relative_coord(0, 2): layout_EDIT_FILENAME_c_T5;
    relative_coord(0, 0): layout_EDIT_FILENAME_c_T0;
    relative_coord(1, 0): layout_ground;
    relative_coord(1, 1): layout_ground;
    relative_coord(0, 1): layout_ground;
}

spritelayout layout_EDIT_FILENAME_d_T0 {
    ground { sprite: spriteset_ground(); }
    building {
        sprite: spriteset_EDIT_FILENAME_d_T0();
        zextent: 200; 
    }
}
spritelayout layout_EDIT_FILENAME_d_T1 {
    ground { sprite: spriteset_ground(); }
    building {
        sprite: spriteset_EDIT_FILENAME_d_T1();
        zextent: 200; 
    }
}
spritelayout layout_EDIT_FILENAME_d_T2 {
    ground { sprite: spriteset_ground(); }
    building {
        sprite: spriteset_EDIT_FILENAME_d_T2();
        zextent: 200; 
    }
}
spritelayout layout_EDIT_FILENAME_d_T3 {
    ground { sprite: spriteset_ground(); }
    building {
        sprite: spriteset_EDIT_FILENAME_d_T3();
        zextent: 200; 
    }
}
spritelayout layout_EDIT_FILENAME_d_T4 {
    ground { sprite: spriteset_ground(); }
    building {
        sprite: spriteset_EDIT_FILENAME_d_T4();
        zextent: 200; 
    }
}
spritelayout layout_EDIT_FILENAME_d_T5 {
    ground { sprite: spriteset_ground(); }
    building {
        sprite: spriteset_EDIT_FILENAME_d_T5();
        zextent: 200; 
    }
}

switch (FEAT_OBJECTS, SELF, switch_EDIT_FILENAME_d_layout, [relative_pos]) {
    relative_coord(2, 0): layout_EDIT_FILENAME_d_T1;
    relative_coord(2, 1): layout_EDIT_FILENAME_d_T2;
    relative_coord(2, 2): layout_EDIT_FILENAME_d_T3;
    relative_coord(1, 2): layout_EDIT_FILENAME_d_T4;
    relative_coord(0, 2): layout_EDIT_FILENAME_d_T5;
    relative_coord(0, 0): layout_EDIT_FILENAME_d_T0;
    relative_coord(1, 0): layout_ground;
    relative_coord(1, 1): layout_ground;
    relative_coord(0, 1): layout_ground;
}

spritelayout layout_EDIT_FILENAME_a_menu {
    ground { sprite: spriteset_empty(); }
    building { sprite: spriteset_EDIT_FILENAME_a_menu(); }
}
spritelayout layout_EDIT_FILENAME_b_menu {
    ground { sprite: spriteset_empty(); }
    building { sprite: spriteset_EDIT_FILENAME_b_menu(); }
}
spritelayout layout_EDIT_FILENAME_c_menu {
    ground { sprite: spriteset_empty(); }
    building { sprite: spriteset_EDIT_FILENAME_c_menu(); }
}
spritelayout layout_EDIT_FILENAME_d_menu {
    ground { sprite: spriteset_empty(); }
    building { sprite: spriteset_EDIT_FILENAME_d_menu(); }
}

switch (FEAT_OBJECTS, SELF, switch_EDIT_FILENAME_views, [view]) {
    0: switch_EDIT_FILENAME_a_layout;
    1: switch_EDIT_FILENAME_b_layout;
    2: switch_EDIT_FILENAME_c_layout;
    3: switch_EDIT_FILENAME_d_layout;
}
switch (FEAT_OBJECTS, SELF, switch_EDIT_FILENAME_menu, [view]) {
    0: layout_EDIT_FILENAME_a_menu;   
    1: layout_EDIT_FILENAME_b_menu;
    2: layout_EDIT_FILENAME_c_menu;
    3: layout_EDIT_FILENAME_d_menu;
}

item (FEAT_OBJECTS, object_EDIT_FILENAME) {
    property {
        class:                  "EDIT_CLASS";
        classname:              string(STR_EDIT_CLASS);
        name:                   string(STR_OBJ_EDIT_FILENAME);
        climates_available:     ALL_CLIMATES;
        size:                   [3,3];
        build_cost_multiplier:  8;
        remove_cost_multiplier: 8;
        introduction_date:      0x00000000;
        end_of_life_date:       0xFFFFFFFF;
        object_flags:           param_remove == 0 ? bitmask(OBJ_FLAG_ANYTHING_REMOVE) : bitmask();
        height:                 8;
        num_views:              4;
    }
    graphics {
        default:         switch_EDIT_FILENAME_views;
        purchase:        switch_EDIT_FILENAME_menu;
    }
}]]


return templates