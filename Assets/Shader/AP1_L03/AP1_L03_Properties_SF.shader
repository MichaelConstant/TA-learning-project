// Shader created with Shader Forge v1.40 
// Shader Forge (c) Freya Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.40;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,cpap:True,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:0,bdst:1,dpts:2,wrdp:True,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:False,aust:True,igpj:False,qofs:0,qpre:1,rntp:1,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,atwp:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:3138,x:32719,y:32712,varname:node_3138,prsc:2|emission-9553-OUT;n:type:ShaderForge.SFN_NormalVector,id:5033,x:31620,y:32613,prsc:2,pt:False;n:type:ShaderForge.SFN_Normalize,id:4491,x:31620,y:32422,varname:node_4491,prsc:2|IN-7907-XYZ;n:type:ShaderForge.SFN_Dot,id:9373,x:31819,y:32546,varname:node_9373,prsc:2,dt:0|A-4491-OUT,B-5033-OUT;n:type:ShaderForge.SFN_Vector4Property,id:7907,x:31402,y:32422,ptovrint:False,ptlb:FakeLightDir,ptin:_FakeLightDir,varname:node_7907,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0,v2:1,v3:0,v4:0;n:type:ShaderForge.SFN_RemapRange,id:5904,x:31997,y:32546,cmnt:HalfLambert,varname:node_5904,prsc:2,frmn:-1,frmx:1,tomn:0,tomx:1|IN-9373-OUT;n:type:ShaderForge.SFN_Color,id:8099,x:31405,y:32870,ptovrint:False,ptlb:FakeLightCol,ptin:_FakeLightCol,varname:node_8099,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.8,c2:1,c3:0.5,c4:1;n:type:ShaderForge.SFN_Multiply,id:926,x:31620,y:32870,varname:node_926,prsc:2|A-5904-OUT,B-8099-RGB;n:type:ShaderForge.SFN_Slider,id:4507,x:31463,y:33043,ptovrint:False,ptlb:FakeLightIntensity,ptin:_FakeLightIntensity,varname:node_4507,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:1,max:2;n:type:ShaderForge.SFN_Multiply,id:5165,x:31803,y:32870,varname:node_5165,prsc:2|A-926-OUT,B-4507-OUT;n:type:ShaderForge.SFN_TexCoord,id:2074,x:31620,y:33160,varname:node_2074,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_Tex2d,id:7762,x:31798,y:33160,ptovrint:False,ptlb:TextureInput,ptin:_TextureInput,varname:node_7762,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False|UVIN-2074-UVOUT;n:type:ShaderForge.SFN_Multiply,id:1025,x:32005,y:33011,varname:node_1025,prsc:2|A-5165-OUT,B-7762-RGB;n:type:ShaderForge.SFN_SwitchProperty,id:9553,x:32369,y:33012,ptovrint:False,ptlb:LightOn,ptin:_LightOn,varname:node_9553,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,on:True|A-7762-RGB,B-1025-OUT;proporder:7907-8099-4507-7762-9553;pass:END;sub:END;*/

Shader "AP1/L03/Properties_SF" {
    Properties {
        _FakeLightDir ("FakeLightDir", Vector) = (0,1,0,0)
        _FakeLightCol ("FakeLightCol", Color) = (0.8,1,0.5,1)
        _FakeLightIntensity ("FakeLightIntensity", Range(0, 2)) = 1
        _TextureInput ("TextureInput", 2D) = "white" {}
        [MaterialToggle] _LightOn ("LightOn", Float ) = 0
    }
    SubShader {
        Tags {
            "RenderType"="Opaque"
        }
        Pass {
            Name "FORWARD"
            Tags {
                "LightMode"="ForwardBase"
            }
            
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #pragma multi_compile_instancing
            #include "UnityCG.cginc"
            #pragma multi_compile_fwdbase_fullshadows
            #pragma target 3.0
            uniform sampler2D _TextureInput; uniform float4 _TextureInput_ST;
            UNITY_INSTANCING_BUFFER_START( Props )
                UNITY_DEFINE_INSTANCED_PROP( float4, _FakeLightDir)
                UNITY_DEFINE_INSTANCED_PROP( float4, _FakeLightCol)
                UNITY_DEFINE_INSTANCED_PROP( float, _FakeLightIntensity)
                UNITY_DEFINE_INSTANCED_PROP( fixed, _LightOn)
            UNITY_INSTANCING_BUFFER_END( Props )
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                UNITY_VERTEX_INPUT_INSTANCE_ID
                float2 uv0 : TEXCOORD0;
                float3 normalDir : TEXCOORD1;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                UNITY_SETUP_INSTANCE_ID( v );
                UNITY_TRANSFER_INSTANCE_ID( v, o );
                o.uv0 = v.texcoord0;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.pos = UnityObjectToClipPos( v.vertex );
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                UNITY_SETUP_INSTANCE_ID( i );
                i.normalDir = normalize(i.normalDir);
                float3 normalDirection = i.normalDir;
////// Lighting:
////// Emissive:
                float4 _TextureInput_var = tex2D(_TextureInput,TRANSFORM_TEX(i.uv0, _TextureInput));
                float4 _FakeLightDir_var = UNITY_ACCESS_INSTANCED_PROP( Props, _FakeLightDir );
                float node_9373 = dot(normalize(_FakeLightDir_var.rgb),i.normalDir);
                float4 _FakeLightCol_var = UNITY_ACCESS_INSTANCED_PROP( Props, _FakeLightCol );
                float _FakeLightIntensity_var = UNITY_ACCESS_INSTANCED_PROP( Props, _FakeLightIntensity );
                float3 _LightOn_var = lerp( _TextureInput_var.rgb, ((((node_9373*0.5+0.5)*_FakeLightCol_var.rgb)*_FakeLightIntensity_var)*_TextureInput_var.rgb), UNITY_ACCESS_INSTANCED_PROP( Props, _LightOn ) );
                float3 emissive = _LightOn_var;
                float3 finalColor = emissive;
                return fixed4(finalColor,1);
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
