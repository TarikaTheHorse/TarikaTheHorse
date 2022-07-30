// This template .qc will allow you to quickly compile any existing pony into a ReVAmped GMod version.

//MODEL NAME
//Your OC name goes here....
$ModelName "ReVAmped_VioletThePone.mdl"

//------------------------------------------------------------------------------

// The base is in DMX format, so no more mess with flexfiles 
// mismatches and so on. Just insert any body name from bodyparts/feral/heads/GMod folder.

//BASE DMX MODEL
$Model "model" "C:\Users\JD\Desktop\pony\zips\SFW-Feral-Sourcefile-Release\Usermod\Models\My_OC\reference_rarity_reVAmped_head_HWM.dmx" {

	eyeball righteye Head -4.600 -15.060 39.890 eyeball_r 10.000  4.000 body 10.000
	eyeball lefteye Head 4.600 -15.060 39.890 eyeball_l 10.000  -4.000 body 10.000
    mouth 0 "mouth"  Head 0.000 1.000 0.000

flexcontroller eyes range -90 90 eyes_updown
flexcontroller eyes range -90 90 eyes_rightleft

}

//------------------------------------------------------------------------------

$SurfaceProp "flesh"

$Contents "solid"

$EyePosition 0 0 70


$mostlyopaque

//------------------------------------------------------------------------------
//BODYGROUPS (manes, tails, bodyparts, accessories) for your pony go here.

// There is a limitation in GMod that does not allow more than 100-150k vertices total in model.
// If you add any more bodygroups, they will glitch out.
// Also flexes on bodygroups will not work. Keep that in mind when compiling.

//DMX

$bodygroup "body"
{
	studio "C:\Users\JD\Desktop\pony\zips\SFW-Feral-Sourcefile-Release\Usermod\Models\My_OC\reVAmped_body_regular.dmx"
	"blank"
}
$bodygroup "tongue"
{
	studio "C:\Users\JD\Desktop\pony\zips\SFW-Feral-Sourcefile-Release\Usermod\Models\My_OC\tongue_regular.dmx"
	"blank"
}
$bodygroup "hooves"
{
	studio "C:\Users\JD\Desktop\pony\zips\SFW-Feral-Sourcefile-Release\Usermod\Models\My_OC\hooves_regular.dmx"
	"blank"
}
$bodygroup "ears"
{
	studio "C:\Users\JD\Desktop\pony\zips\SFW-Feral-Sourcefile-Release\Usermod\Models\My_OC\pony_ears_movie.dmx"
	"blank"
}
$bodygroup "mane"
{
	studio "C:\Users\JD\Desktop\pony\zips\SFW-Feral-Sourcefile-Release\Usermod\Models\My_OC\VA_mane_SunsetShimmer.dmx"
	"blank"
}
$bodygroup "hair"
{
	studio "C:\Users\JD\Desktop\pony\zips\SFW-Feral-Sourcefile-Release\Usermod\Models\My_OC\mane_redheart.dmx"
	"blank"
}
$bodygroup "tail"
{
	studio "C:\Users\JD\Desktop\pony\zips\SFW-Feral-Sourcefile-Release\Usermod\Models\My_OC\tail_octavia.dmx"
	"blank"
}



//------------------------------------------------------------------------------
//MATERIALS

$cdmaterials "models/My_OC/"

$texturegroup skinfamilies {
	{ "eyeball_l"         "eyeball_r"        }
	{ "eyeball_l_medium"  "eyeball_r_medium" }
	{ "eyeball_l_small"   "eyeball_r_small"  }	
}

//------------------------------------------------------------------------------

$Attachment "eyes" "Head" 5.61 -9.36 0 rotate 0 -92.59 -90
$Attachment "mouth" "Head" 0.8 -5.8 -0.15 rotate 0 -80 -90

$CBox 0 0 0 0 0 0

//------------------------------------------------------------------------------
//JIGGLESBONES

//ears

$jigglebone "RightEar"
{
    is_flexible
    {
        length 10
        tip_mass 100
        pitch_stiffness 300
        pitch_damping 7
        yaw_stiffness 300
        yaw_damping 7
        along_stiffness 200
        along_damping 0
        pitch_constraint -15.0 15.0
        pitch_friction 0
        pitch_bounce 1
        yaw_constraint -40.0 40.0
        yaw_friction 0
        yaw_bounce 1
    }
}
$jigglebone "RightEarTip"
{
    is_flexible
    {
        length 10
        tip_mass 100
        pitch_stiffness 600
        pitch_damping 9
        yaw_stiffness 600
        yaw_damping 9
        along_stiffness 200
        along_damping 0
        pitch_constraint -7.0 7.0
        pitch_friction 0
        pitch_bounce 1
        yaw_constraint -30.0 30.0
        yaw_friction 0
        yaw_bounce 1
    }
}

$jigglebone "LeftEar"
{
    is_flexible
    {
        length 10
        tip_mass 100
        pitch_stiffness 300
        pitch_damping 7
        yaw_stiffness 300
        yaw_damping 7
        along_stiffness 200
        along_damping 0
        pitch_constraint -15.0 15.0
        pitch_friction 0
        pitch_bounce 1
        yaw_constraint -40.0 40.0
        yaw_friction 0
        yaw_bounce 1
    }
}
$jigglebone "LeftEarTip"
{
    is_flexible
    {
        length 10
        tip_mass 100
        pitch_stiffness 600
        pitch_damping 9
        yaw_stiffness 600
        yaw_damping 9
        along_stiffness 200
        along_damping 0
        pitch_constraint -7.0 7.0
        pitch_friction 0
        pitch_bounce 1
        yaw_constraint -30.0 30.0
        yaw_friction 0
        yaw_bounce 1
    }
}
//------------------------------------------------------------------------------
//cheeks

$jigglebone "RightCheek"
{
	is_flexible
	{
		length 25
		tip_mass 100
		pitch_stiffness 500
		pitch_damping 7
		yaw_stiffness 500
		yaw_damping 7
		allow_length_flex
		along_stiffness 900
		along_damping 5
		pitch_constraint -60.000002 60.000002
		pitch_friction 10
		pitch_bounce 1
		yaw_constraint -60.000002 60.000002
		yaw_friction 0
		yaw_bounce 1
	}
}
$jigglebone "LeftCheek"
{
	is_flexible
	{
		length 25
		tip_mass 100
		pitch_stiffness 500
		pitch_damping 7
		yaw_stiffness 500
		yaw_damping 7
		allow_length_flex
		along_stiffness 900
		along_damping 5
		pitch_constraint -60.000002 60.000002
		pitch_friction 10
		pitch_bounce 1
		yaw_constraint -60.000002 60.000002
		yaw_friction 0
		yaw_bounce 1
	}
}
//hair
$jigglebone "jiggle_hair1" {
	is_flexible {
		length 15
		tip_mass 50
		pitch_constraint -30 30
		pitch_friction 5
		yaw_stiffness 10
		yaw_damping 10
		yaw_constraint -30 30
		yaw_friction 5
		pitch_stiffness 10
		pitch_damping 10
	}
}

$jigglebone "jiggle_hair2" {
	is_flexible {
		length 5
		tip_mass 50
		pitch_constraint -5 5
		pitch_friction 5
		yaw_stiffness 150
		yaw_damping 10
		yaw_constraint -15 15
		yaw_friction 5
		pitch_stiffness 150
		pitch_damping 10
	}
}

$jigglebone "jiggle_hair3" {
	is_flexible {
		length 5
		tip_mass 50
		pitch_constraint -20 20
		pitch_friction 5
		yaw_stiffness 150
		yaw_damping 10
		yaw_constraint -20 20
		yaw_friction 5
		pitch_stiffness 150
		pitch_damping 10
	}
}

$jigglebone "jiggle_hair4" {
	is_flexible {
		length 5
		tip_mass 50
		pitch_constraint -20 20
		pitch_friction 5
		yaw_stiffness 150
		yaw_damping 10
		yaw_constraint -20 20
		yaw_friction 5
		pitch_stiffness 150
		pitch_damping 10
	}
}

$jigglebone "jiggle_hair5" {
	is_flexible {
		length 5
		tip_mass 50
		pitch_constraint -20 20
		pitch_friction 5
		yaw_stiffness 150
		yaw_damping 10
		yaw_constraint -20 20
		yaw_friction 5
		pitch_stiffness 150
		pitch_damping 10
	}
}

$jigglebone "jiggle_hair6" {
	is_flexible {
		length 5
		tip_mass 50
		pitch_constraint -20 20
		pitch_friction 5
		yaw_stiffness 150
		yaw_damping 10
		yaw_constraint -20 20
		yaw_friction 5
		pitch_stiffness 150
		pitch_damping 10
	}
}

$jigglebone "jiggle_hair7" {
	is_flexible {
		length 5
		tip_mass 50
		pitch_constraint -20 20
		pitch_friction 5
		yaw_stiffness 150
		yaw_damping 10
		yaw_constraint -20 20
		yaw_friction 5
		pitch_stiffness 150
		pitch_damping 10
	}
}

$jigglebone "jiggle_hair8" {
	is_flexible {
		length 5
		tip_mass 50
		pitch_constraint -20 20
		pitch_friction 5
		yaw_stiffness 150
		yaw_damping 10
		yaw_constraint -20 20
		yaw_friction 5
		pitch_stiffness 150
		pitch_damping 10
	}
}

$jigglebone "jiggle_hair9" {
	is_flexible {
		length 5
		tip_mass 50
		pitch_constraint -20 20
		pitch_friction 5
		yaw_stiffness 150
		yaw_damping 10
		yaw_constraint -20 20
		yaw_friction 5
		pitch_stiffness 150
		pitch_damping 10
	}
}
$jigglebone "jiggle_hair10" {
	is_flexible {
		length 5
		tip_mass 50
		pitch_constraint -20 20
		pitch_friction 5
		yaw_stiffness 150
		yaw_damping 10
		yaw_constraint -20 20
		yaw_friction 5
		pitch_stiffness 150
		pitch_damping 10
	}
}

$jigglebone "jiggle_hair11" {
	is_flexible {
		length 5
		tip_mass 50
		pitch_constraint -20 20
		pitch_friction 5
		yaw_stiffness 150
		yaw_damping 10
		yaw_constraint -20 20
		yaw_friction 5
		pitch_stiffness 150
		pitch_damping 10
	}
}

$jigglebone "jiggle_hair12" {
	is_flexible {
		length 5
		tip_mass 50
		pitch_constraint -20 20
		pitch_friction 5
		yaw_stiffness 150
		yaw_damping 10
		yaw_constraint -20 20
		yaw_friction 5
		pitch_stiffness 150
		pitch_damping 10
	}
}

$jigglebone "jiggle_hair13" {
	is_flexible {
		length 5
		tip_mass 50
		pitch_constraint -20 20
		pitch_friction 5
		yaw_stiffness 150
		yaw_damping 10
		yaw_constraint -20 20
		yaw_friction 5
		pitch_stiffness 150
		pitch_damping 10
	}
}
$jigglebone "jiggle_hair14" {
	is_flexible {
		length 5
		tip_mass 50
		pitch_constraint -20 20
		pitch_friction 5
		yaw_stiffness 150
		yaw_damping 10
		yaw_constraint -20 20
		yaw_friction 5
		pitch_stiffness 150
		pitch_damping 10
	}
}

$jigglebone "jiggle_hair15" {
	is_flexible {
		length 5
		tip_mass 50
		pitch_constraint -20 20
		pitch_friction 5
		yaw_stiffness 150
		yaw_damping 10
		yaw_constraint -20 20
		yaw_friction 5
		pitch_stiffness 150
		pitch_damping 10
	}
}
//------------------------------------------------------------------------------
//Left Hair

$jigglebone "left_jiggle_hair1" {
	is_flexible {
		length 5
		tip_mass 50
		pitch_constraint -10 10
		pitch_friction 5
		yaw_stiffness 150
		yaw_damping 10
		yaw_constraint -10 10
		yaw_friction 5
		pitch_stiffness 150
		pitch_damping 10
	}
}

$jigglebone "left_jiggle_hair2" {
	is_flexible {
		length 5
		tip_mass 50
		pitch_constraint -5 5
		pitch_friction 5
		yaw_stiffness 150
		yaw_damping 10
		yaw_constraint -15 15
		yaw_friction 5
		pitch_stiffness 150
		pitch_damping 10
	}
}

$jigglebone "left_jiggle_hair3" {
	is_flexible {
		length 5
		tip_mass 50
		pitch_constraint -20 20
		pitch_friction 5
		yaw_stiffness 150
		yaw_damping 10
		yaw_constraint -20 20
		yaw_friction 5
		pitch_stiffness 150
		pitch_damping 10
	}
}

$jigglebone "left_jiggle_hair4" {
	is_flexible {
		length 5
		tip_mass 50
		pitch_constraint -20 20
		pitch_friction 5
		yaw_stiffness 150
		yaw_damping 10
		yaw_constraint -20 20
		yaw_friction 5
		pitch_stiffness 150
		pitch_damping 10
	}
}

$jigglebone "left_jiggle_hair5" {
	is_flexible {
		length 5
		tip_mass 50
		pitch_constraint -20 20
		pitch_friction 5
		yaw_stiffness 150
		yaw_damping 10
		yaw_constraint -20 20
		yaw_friction 5
		pitch_stiffness 150
		pitch_damping 10
	}
}

$jigglebone "left_jiggle_hair6" {
	is_flexible {
		length 5
		tip_mass 50
		pitch_constraint -20 20
		pitch_friction 5
		yaw_stiffness 150
		yaw_damping 10
		yaw_constraint -20 20
		yaw_friction 5
		pitch_stiffness 150
		pitch_damping 10
	}
}

$jigglebone "left_jiggle_hair7" {
	is_flexible {
		length 5
		tip_mass 50
		pitch_constraint -20 20
		pitch_friction 5
		yaw_stiffness 150
		yaw_damping 10
		yaw_constraint -20 20
		yaw_friction 5
		pitch_stiffness 150
		pitch_damping 10
	}
}
//------------------------------------------------------------------------------
//Right Hair

$jigglebone "right_jiggle_hair1" {
	is_flexible {
		length 5
		tip_mass 50
		pitch_constraint -10 10
		pitch_friction 5
		yaw_stiffness 150
		yaw_damping 10
		yaw_constraint -10 10
		yaw_friction 5
		pitch_stiffness 150
		pitch_damping 10
	}
}

$jigglebone "right_jiggle_hair2" {
	is_flexible {
		length 5
		tip_mass 50
		pitch_constraint -5 5
		pitch_friction 5
		yaw_stiffness 150
		yaw_damping 10
		yaw_constraint -15 15
		yaw_friction 5
		pitch_stiffness 150
		pitch_damping 10
	}
}

$jigglebone "right_jiggle_hair3" {
	is_flexible {
		length 5
		tip_mass 50
		pitch_constraint -20 20
		pitch_friction 5
		yaw_stiffness 150
		yaw_damping 10
		yaw_constraint -20 20
		yaw_friction 5
		pitch_stiffness 150
		pitch_damping 10
	}
}

$jigglebone "right_jiggle_hair4" {
	is_flexible {
		length 5
		tip_mass 50
		pitch_constraint -20 20
		pitch_friction 5
		yaw_stiffness 150
		yaw_damping 10
		yaw_constraint -20 20
		yaw_friction 5
		pitch_stiffness 150
		pitch_damping 10
	}
}

$jigglebone "right_jiggle_hair5" {
	is_flexible {
		length 5
		tip_mass 50
		pitch_constraint -20 20
		pitch_friction 5
		yaw_stiffness 150
		yaw_damping 10
		yaw_constraint -20 20
		yaw_friction 5
		pitch_stiffness 150
		pitch_damping 10
	}
}

$jigglebone "right_jiggle_hair6" {
	is_flexible {
		length 5
		tip_mass 50
		pitch_constraint -20 20
		pitch_friction 5
		yaw_stiffness 150
		yaw_damping 10
		yaw_constraint -20 20
		yaw_friction 5
		pitch_stiffness 150
		pitch_damping 10
	}
}

$jigglebone "right_jiggle_hair7" {
	is_flexible {
		length 5
		tip_mass 50
		pitch_constraint -20 20
		pitch_friction 5
		yaw_stiffness 150
		yaw_damping 10
		yaw_constraint -20 20
		yaw_friction 5
		pitch_stiffness 150
		pitch_damping 10
	}
}
//------------------------------------------------------------------------------
//bowtie
$jigglebone "jiggle_scarf" {
	is_flexible {
		length 5
		tip_mass 50
		pitch_constraint -10 10
		pitch_friction 5
		yaw_stiffness 150
		yaw_damping 10
		yaw_constraint -10 10
		yaw_friction 5
		pitch_stiffness 150
		pitch_damping 10
	}
}

$jigglebone "jiggle_bowtier" {
	is_flexible {
		length 5
		tip_mass 50
		pitch_constraint -10 10
		pitch_friction 5
		yaw_stiffness 150
		yaw_damping 10
		yaw_constraint -10 10
		yaw_friction 5
		pitch_stiffness 150
		pitch_damping 10
	}
}
//------------------------------------------------------------------------------
//tail

$jigglebone "Tail1" {
	is_flexible
	{
		length 10
		tip_mass 100
		pitch_stiffness 150
		pitch_damping 5
		yaw_stiffness 150
		yaw_damping 5
		along_stiffness 100
		along_damping 0
		pitch_constraint -30.000001 30.000001
		pitch_friction 0
		pitch_bounce 1
		yaw_constraint -30.000003 30.000003
		yaw_friction 0
		yaw_bounce 1
	}
}

$jigglebone "Tail2" {
	is_flexible
	{
		length 15
		tip_mass 10
		pitch_stiffness 175
		pitch_damping 7
		yaw_stiffness 175
		yaw_damping 7
		along_stiffness 50
		along_damping 0
		pitch_constraint -60.000001 60.000001
		pitch_friction 0
		pitch_bounce 1
		yaw_constraint -60.000003 60.000003
		yaw_friction 0
		yaw_bounce 1
	}
}

$jigglebone "Tail3" {
	is_flexible
	{
		length 15
		tip_mass 10
		pitch_stiffness 200
		pitch_damping 12
		yaw_stiffness 300
		yaw_damping 12
		along_stiffness 100
		along_damping 0
		pitch_constraint -90.000001 90.000001
		pitch_friction 0
		pitch_bounce 1
		yaw_constraint -90.000003 90.000003
		yaw_friction 0
		yaw_bounce 1
	}
}
$jigglebone "Tail4" {
		is_flexible 
		{
		length 50
		tip_mass 30
		pitch_stiffness 200
		pitch_damping 10
		yaw_stiffness 200
		yaw_damping 10
		allow_length_flex
		along_stiffness 100
		angle_constraint 12
	}
}

$jigglebone "Tail5" {
	is_flexible {
		length 100
		tip_mass 100
		pitch_stiffness 400
		pitch_damping 20
		yaw_stiffness 400
		yaw_damping 20
		allow_length_flex
		along_stiffness 100
		angle_constraint 12
	}
}
//------------------------------------------------------------------------------
//tail
$jigglebone "jiggle_tail1" {
	is_flexible {
		length 50
		tip_mass 100
		pitch_stiffness 200
		pitch_damping 4
		yaw_stiffness 200
		yaw_damping 4
		allow_length_flex
		along_stiffness 200
		angle_constraint 12
	}
}

$jigglebone "jiggle_tail2" {
	is_flexible {
		length 50
		tip_mass 100
		pitch_stiffness 200
		pitch_damping 4
		yaw_stiffness 200
		yaw_damping 4
		allow_length_flex
		along_stiffness 100
		angle_constraint 12
	}
}

$jigglebone "jiggle_tail3" {
	is_flexible {
		length 50
		tip_mass 100
		pitch_stiffness 200
		pitch_damping 4
		yaw_stiffness 200
		yaw_damping 4
		allow_length_flex
		along_stiffness 100
		angle_constraint 12
	}
}

$jigglebone "jiggle_tail4" {
	is_flexible {
		length 50
		tip_mass 100
		pitch_stiffness 200
		pitch_damping 4
		yaw_stiffness 200
		yaw_damping 4
		allow_length_flex
		along_stiffness 100
		angle_constraint 12
	}
}

$jigglebone "jiggle_tail5" {
	is_flexible {
		length 50
		tip_mass 100
		pitch_stiffness 200
		pitch_damping 4
		yaw_stiffness 200
		yaw_damping 4
		allow_length_flex
		along_stiffness 100
		angle_constraint 12
	}
}

$jigglebone "jiggle_tail6" {
	is_flexible {
		length 50
		tip_mass 100
		pitch_stiffness 200
		pitch_damping 4
		yaw_stiffness 200
		yaw_damping 4
		allow_length_flex
		along_stiffness 100
		angle_constraint 12
	}
}
$jigglebone "jiggle_tail7" {
	is_flexible {
		length 50
		tip_mass 100
		pitch_stiffness 200
		pitch_damping 4
		yaw_stiffness 200
		yaw_damping 4
		allow_length_flex
		along_stiffness 100
		angle_constraint 12
	}
}
$jigglebone "jiggle_tail8" {
	is_flexible {
		length 50
		tip_mass 100
		pitch_stiffness 200
		pitch_damping 4
		yaw_stiffness 200
		yaw_damping 4
		allow_length_flex
		along_stiffness 100
		angle_constraint 12
	}
}

//Accessories
$jigglebone "jiggle_collar" {
	is_flexible {
		length 5
		tip_mass 50
		pitch_constraint -10 10
		pitch_friction 5
		yaw_stiffness 150
		yaw_damping 10
		yaw_constraint -10 10
		yaw_friction 5
		pitch_stiffness 150
		pitch_damping 10
	}
}

//------------------------------------------------------------------------------
//Skirts

$jigglebone "left_jiggle_skirt1" {
	is_flexible {
		length 5
		tip_mass 100
		pitch_constraint -15 15
		pitch_friction 5
		yaw_stiffness 150
		yaw_damping 10
		yaw_constraint -15 15
		yaw_friction 5
		pitch_stiffness 150
		pitch_damping 10
	}
}

$jigglebone "left_jiggle_skirt2" {
	is_flexible {
		length 5
		tip_mass 100
		pitch_constraint -15 15
		pitch_friction 5
		yaw_stiffness 150
		yaw_damping 10
		yaw_constraint -15 15
		yaw_friction 5
		pitch_stiffness 150
		pitch_damping 10
	}
}

$jigglebone "right_jiggle_skirt1" {
	is_flexible {
		length 5
		tip_mass 100
		pitch_constraint -15 15
		pitch_friction 5
		yaw_stiffness 150
		yaw_damping 10
		yaw_constraint -15 15
		yaw_friction 5
		pitch_stiffness 150
		pitch_damping 10
	}
}

$jigglebone "right_jiggle_skirt2" {
	is_flexible {
		length 5
		tip_mass 100
		pitch_constraint -15 15
		pitch_friction 5
		yaw_stiffness 150
		yaw_damping 10
		yaw_constraint -15 15
		yaw_friction 5
		pitch_stiffness 150
		pitch_damping 10
	}
}

$jigglebone "upper_jiggle_skirt" {
	is_flexible {
		length 5
		tip_mass 100
		pitch_constraint -15 15
		pitch_friction 5
		yaw_stiffness 150
		yaw_damping 10
		yaw_constraint -15 15
		yaw_friction 5
		pitch_stiffness 150
		pitch_damping 10
	}
}
//------------------------------------------------------------------------------
//Beard

$jigglebone "jiggle_beard" {
	is_flexible {
		length 5
		tip_mass 100
		pitch_constraint -15 15
		pitch_friction 5
		yaw_stiffness 150
		yaw_damping 10
		yaw_constraint -15 15
		yaw_friction 5
		pitch_stiffness 150
		pitch_damping 10
	}
}
//------------------------------------------------------------------------------
//SEQUENCES for animation presets.

$SectionFrames 30 144

$Sequence "ragdoll" {
	"anims/ragdoll_feral.dmx"
	activity "ACT_DIERAGDOLL" 1
	fadein 0.2
	fadeout 0.2
	fps 30
}

//------------------------------------------------------------------------------
// GMod specific collision model, essential for proper work in there.

$collisionjoints "My_OC/phymodel_pony_regular.dmx" {

	$mass 50.0
	$inertia 10.00
	$damping 0.20
	$rotdamping 4.50
	$noselfcollisions
	$rootbone "pelvis"
	

	$jointconstrain "leftthigh" x limit -30.00 30.00 0.00
	$jointconstrain "leftthigh" y limit -90.00 10.00 0.00
	$jointconstrain "leftthigh" z limit -90.00 90.00 0.00

	$jointconstrain "leftleg1" x limit 0.00 0.00 0.00
	$jointconstrain "leftleg1" y limit 0.00 0.00 0.00
	$jointconstrain "leftleg1" z limit -100.00 0.00 0.00

	$jointconstrain "leftleg2" x limit 0.00 0.00 0.00
	$jointconstrain "leftleg2" y limit 0.00 0.00 0.00
	$jointconstrain "leftleg2" z limit -20.00 100.00 0.00

	$jointconstrain "leftfoot" x limit -50.00 50.00 0.00
	$jointconstrain "leftfoot" y limit -50.00 50.00 0.00
	$jointconstrain "leftfoot" z limit -50.00 50.00 0.00

	$jointconstrain "rightthigh" x limit -30.00 30.00 0.00
	$jointconstrain "rightthigh" y limit -90.00 10.00 0.00
	$jointconstrain "rightthigh" z limit -90.00 90.00 0.00

	$jointconstrain "rightleg1" x limit 0.00 0.00 0.00
	$jointconstrain "rightleg1" y limit 0.00 0.00 0.00
	$jointconstrain "rightleg1" z limit -100.00 0.00 0.00

	$jointconstrain "rightleg2" x limit 0.00 0.00 0.00
	$jointconstrain "rightleg2" y limit 0.00 0.00 0.00
	$jointconstrain "rightleg2" z limit -20.00 100.00 0.00

	$jointconstrain "rightfoot" x limit -50.00 50.00 0.00
	$jointconstrain "rightfoot" y limit -50.00 50.00 0.00
	$jointconstrain "rightfoot" z limit -50.00 50.00 0.00

	$jointconstrain "chest1" x limit -15.00 15.00 0.00
	$jointconstrain "chest1" y limit -20.00 20.00 0.00
	$jointconstrain "chest1" z limit -20.00 20.00 0.00

	$jointconstrain "chest2" x limit -15.00 15.00 0.00
	$jointconstrain "chest2" y limit -20.00 20.00 0.00
	$jointconstrain "chest2" z limit -20.00 20.00 0.00

	$jointconstrain "leftshoulder" x limit -30.00 30.00 0.00
	$jointconstrain "leftshoulder" y limit -40.00 40.00 0.00
	$jointconstrain "leftshoulder" z limit -20.00 40.00 0.00

	$jointconstrain "leftforearm" x limit -20.00 20.00 0.00
	$jointconstrain "leftforearm" y limit -10.00 10.00 0.00
	$jointconstrain "leftforearm" z limit 0.00 100.00 0.00

	$jointconstrain "lefthand" x limit 0.00 0.00 0.00
	$jointconstrain "lefthand" y limit 0.00 0.00 0.00
	$jointconstrain "lefthand" z limit -100.00 0.00 0.00

	$jointconstrain "rightshoulder" x limit -30.00 30.00 0.00
	$jointconstrain "rightshoulder" y limit -40.00 40.00 0.00
	$jointconstrain "rightshoulder" z limit -20.00 40.00 0.00

	$jointconstrain "rightforearm" x limit -20.00 20.00 0.00
	$jointconstrain "rightforearm" y limit -10.00 10.00 0.00
	$jointconstrain "rightforearm" z limit 0.00 100.00 0.00

	$jointconstrain "righthand" x limit 0.00 0.00 0.00
	$jointconstrain "righthand" y limit 0.00 0.00 0.00
	$jointconstrain "righthand" z limit -100.00 0.00 0.00

	$jointconstrain "rightball" x limit -50.00 50.00 0.00
	$jointconstrain "rightball" y limit -50.00 50.00 0.00
	$jointconstrain "rightball" z limit -50.00 50.00 0.00

	$jointconstrain "neck" x limit -40.00 40.00 0.00
	$jointconstrain "neck" y limit -30.00 30.00 0.00
	$jointconstrain "neck" z limit -50.00 30.00 0.00

	$jointconstrain "head" x limit -50.00 50.00 0.00
	$jointconstrain "head" y limit -30.00 30.00 0.00
	$jointconstrain "head" z limit -30.00 30.00 0.00

	$jointconstrain "leftball" x limit -50.00 50.00 0.00
	$jointconstrain "leftball" y limit -50.00 50.00 0.00
	$jointconstrain "leftball" z limit -50.00 50.00 0.00
}