// Shader created with Shader Forge v1.40 
// Shader Forge (c) Freya Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.40;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,cpap:True,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:0,bdst:1,dpts:2,wrdp:True,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:False,aust:True,igpj:False,qofs:0,qpre:1,rntp:1,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,atwp:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:3138,x:33108,y:32715,varname:node_3138,prsc:2|emission-5482-OUT;n:type:ShaderForge.SFN_NormalVector,id:8122,x:31411,y:32311,prsc:2,pt:False;n:type:ShaderForge.SFN_LightVector,id:3524,x:31411,y:32493,varname:node_3524,prsc:2;n:type:ShaderForge.SFN_Dot,id:5630,x:31596,y:32399,varname:node_5630,prsc:2,dt:0|A-8122-OUT,B-3524-OUT;n:type:ShaderForge.SFN_Vector1,id:2990,x:31596,y:32568,varname:node_2990,prsc:2,v1:0.5;n:type:ShaderForge.SFN_Multiply,id:4601,x:31773,y:32479,varname:node_4601,prsc:2|A-5630-OUT,B-2990-OUT;n:type:ShaderForge.SFN_Vector1,id:7182,x:31773,y:32634,varname:node_7182,prsc:2,v1:0.5;n:type:ShaderForge.SFN_Add,id:9519,x:31940,y:32537,varname:node_9519,prsc:2|A-4601-OUT,B-7182-OUT;n:type:ShaderForge.SFN_Append,id:7115,x:32114,y:32613,varname:node_7115,prsc:2|A-9519-OUT,B-7182-OUT;n:type:ShaderForge.SFN_Tex2d,id:5500,x:32294,y:32613,ptovrint:False,ptlb:RampTex,ptin:_RampTex,varname:node_5500,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:925ef4d0f52a8cc4f95b4381a4c9bd72,ntxv:0,isnm:False|UVIN-7115-OUT;n:type:ShaderForge.SFN_NormalVector,id:3997,x:30973,y:32945,prsc:2,pt:False;n:type:ShaderForge.SFN_LightVector,id:596,x:30973,y:33151,varname:node_596,prsc:2;n:type:ShaderForge.SFN_Add,id:6340,x:31336,y:33164,varname:node_6340,prsc:2|A-6729-XYZ,B-596-OUT;n:type:ShaderForge.SFN_Add,id:1373,x:31339,y:32820,varname:node_1373,prsc:2|A-7328-XYZ,B-596-OUT;n:type:ShaderForge.SFN_Vector4Property,id:7328,x:31162,y:32752,ptovrint:False,ptlb:HighlightOffset2,ptin:_HighlightOffset2,varname:_node_3964_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0.44,v2:0,v3:0,v4:0;n:type:ShaderForge.SFN_Normalize,id:2056,x:31548,y:32820,varname:node_2056,prsc:2|IN-1373-OUT;n:type:ShaderForge.SFN_Normalize,id:4883,x:31546,y:33164,varname:node_4883,prsc:2|IN-6340-OUT;n:type:ShaderForge.SFN_Dot,id:3797,x:31729,y:32949,varname:node_3797,prsc:2,dt:0|A-2056-OUT,B-3997-OUT;n:type:ShaderForge.SFN_Dot,id:8710,x:31729,y:33108,varname:node_8710,prsc:2,dt:0|A-4883-OUT,B-3997-OUT;n:type:ShaderForge.SFN_Vector4Property,id:6729,x:30973,y:32752,ptovrint:False,ptlb:HighlightOffset1,ptin:_HighlightOffset1,varname:node_6729,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0,v2:0,v3:0,v4:0;n:type:ShaderForge.SFN_Step,id:4808,x:31923,y:32949,varname:node_4808,prsc:2|A-234-OUT,B-3797-OUT;n:type:ShaderForge.SFN_Step,id:6279,x:31923,y:33108,varname:node_6279,prsc:2|A-1120-OUT,B-8710-OUT;n:type:ShaderForge.SFN_Max,id:777,x:32103,y:33025,varname:node_777,prsc:2|A-4808-OUT,B-6279-OUT;n:type:ShaderForge.SFN_Slider,id:234,x:31548,y:32741,ptovrint:False,ptlb:HighlightRange1,ptin:_HighlightRange1,varname:node_234,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.98,max:1;n:type:ShaderForge.SFN_Slider,id:1120,x:31546,y:33323,ptovrint:False,ptlb:HighlightRange2,ptin:_HighlightRange2,varname:node_1120,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.995,max:1;n:type:ShaderForge.SFN_Clamp01,id:615,x:32294,y:33025,varname:node_615,prsc:2|IN-777-OUT;n:type:ShaderForge.SFN_Lerp,id:1395,x:32525,y:32751,varname:node_1395,prsc:2|A-5500-RGB,B-2271-RGB,T-615-OUT;n:type:ShaderForge.SFN_Color,id:2271,x:32294,y:32842,ptovrint:False,ptlb:HighlightCol,ptin:_HighlightCol,varname:node_2271,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.909804,c2:0.9215687,c3:0.7764707,c4:1;n:type:ShaderForge.SFN_Color,id:6598,x:32298,y:33364,ptovrint:False,ptlb:FresnelCol,ptin:_FresnelCol,varname:node_6598,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:1,c2:1,c3:1,c4:1;n:type:ShaderForge.SFN_Fresnel,id:2756,x:32298,y:33185,varname:node_2756,prsc:2|EXP-6989-OUT;n:type:ShaderForge.SFN_ValueProperty,id:6989,x:32118,y:33260,ptovrint:False,ptlb:FresnelIntensity,ptin:_FresnelIntensity,varname:node_6989,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:3;n:type:ShaderForge.SFN_Multiply,id:8246,x:32522,y:33185,varname:node_8246,prsc:2|A-2756-OUT,B-6598-RGB;n:type:ShaderForge.SFN_Blend,id:5482,x:32768,y:32935,varname:node_5482,prsc:2,blmd:6,clmp:True|SRC-1395-OUT,DST-8246-OUT;proporder:5500-6729-7328-234-1120-2271-6598-6989;pass:END;sub:END;*/

Shader "AP1/L02/Jade" {
    Properties {
        _RampTex ("RampTex", 2D) = "white" {}
        _HighlightOffset1 ("HighlightOffset1", Vector) = (0,0,0,0)
        _HighlightOffset2 ("HighlightOffset2", Vector) = (0.44,0,0,0)
        _HighlightRange1 ("HighlightRange1", Range(0, 1)) = 0.98
        _HighlightRange2 ("HighlightRange2", Range(0, 1)) = 0.995
        _HighlightCol ("HighlightCol", Color) = (0.909804,0.9215687,0.7764707,1)
        _FresnelCol ("FresnelCol", Color) = (1,1,1,1)
        _FresnelIntensity ("FresnelIntensity", Float ) = 3
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
            #include "AutoLight.cginc"
            #pragma multi_compile_fwdbase_fullshadows
            #pragma target 3.0
            uniform sampler2D _RampTex; uniform float4 _RampTex_ST;
            UNITY_INSTANCING_BUFFER_START( Props )
                UNITY_DEFINE_INSTANCED_PROP( float4, _HighlightOffset2)
                UNITY_DEFINE_INSTANCED_PROP( float4, _HighlightOffset1)
                UNITY_DEFINE_INSTANCED_PROP( float, _HighlightRange1)
                UNITY_DEFINE_INSTANCED_PROP( float, _HighlightRange2)
                UNITY_DEFINE_INSTANCED_PROP( float4, _HighlightCol)
                UNITY_DEFINE_INSTANCED_PROP( float4, _FresnelCol)
                UNITY_DEFINE_INSTANCED_PROP( float, _FresnelIntensity)
            UNITY_INSTANCING_BUFFER_END( Props )
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                UNITY_VERTEX_INPUT_INSTANCE_ID
                float4 posWorld : TEXCOORD0;
                float3 normalDir : TEXCOORD1;
                LIGHTING_COORDS(2,3)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                UNITY_SETUP_INSTANCE_ID( v );
                UNITY_TRANSFER_INSTANCE_ID( v, o );
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                o.pos = UnityObjectToClipPos( v.vertex );
                TRANSFER_VERTEX_TO_FRAGMENT(o)
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                UNITY_SETUP_INSTANCE_ID( i );
                i.normalDir = normalize(i.normalDir);
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float3 normalDirection = i.normalDir;
                float3 lightDirection = normalize(_WorldSpaceLightPos0.xyz);
////// Lighting:
////// Emissive:
                float node_7182 = 0.5;
                float2 node_7115 = float2(((dot(i.normalDir,lightDirection)*0.5)+node_7182),node_7182);
                float4 _RampTex_var = tex2D(_RampTex,TRANSFORM_TEX(node_7115, _RampTex));
                float4 _HighlightCol_var = UNITY_ACCESS_INSTANCED_PROP( Props, _HighlightCol );
                float _HighlightRange1_var = UNITY_ACCESS_INSTANCED_PROP( Props, _HighlightRange1 );
                float4 _HighlightOffset2_var = UNITY_ACCESS_INSTANCED_PROP( Props, _HighlightOffset2 );
                float _HighlightRange2_var = UNITY_ACCESS_INSTANCED_PROP( Props, _HighlightRange2 );
                float4 _HighlightOffset1_var = UNITY_ACCESS_INSTANCED_PROP( Props, _HighlightOffset1 );
                float _FresnelIntensity_var = UNITY_ACCESS_INSTANCED_PROP( Props, _FresnelIntensity );
                float4 _FresnelCol_var = UNITY_ACCESS_INSTANCED_PROP( Props, _FresnelCol );
                float3 emissive = saturate((1.0-(1.0-lerp(_RampTex_var.rgb,_HighlightCol_var.rgb,saturate(max(step(_HighlightRange1_var,dot(normalize((_HighlightOffset2_var.rgb+lightDirection)),i.normalDir)),step(_HighlightRange2_var,dot(normalize((_HighlightOffset1_var.rgb+lightDirection)),i.normalDir))))))*(1.0-(pow(1.0-max(0,dot(normalDirection, viewDirection)),_FresnelIntensity_var)*_FresnelCol_var.rgb))));
                float3 finalColor = emissive;
                return fixed4(finalColor,1);
            }
            ENDCG
        }
        Pass {
            Name "FORWARD_DELTA"
            Tags {
                "LightMode"="ForwardAdd"
            }
            Blend One One
            
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #pragma multi_compile_instancing
            #include "UnityCG.cginc"
            #include "AutoLight.cginc"
            #pragma multi_compile_fwdadd_fullshadows
            #pragma target 3.0
            uniform sampler2D _RampTex; uniform float4 _RampTex_ST;
            UNITY_INSTANCING_BUFFER_START( Props )
                UNITY_DEFINE_INSTANCED_PROP( float4, _HighlightOffset2)
                UNITY_DEFINE_INSTANCED_PROP( float4, _HighlightOffset1)
                UNITY_DEFINE_INSTANCED_PROP( float, _HighlightRange1)
                UNITY_DEFINE_INSTANCED_PROP( float, _HighlightRange2)
                UNITY_DEFINE_INSTANCED_PROP( float4, _HighlightCol)
                UNITY_DEFINE_INSTANCED_PROP( float4, _FresnelCol)
                UNITY_DEFINE_INSTANCED_PROP( float, _FresnelIntensity)
            UNITY_INSTANCING_BUFFER_END( Props )
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                UNITY_VERTEX_INPUT_INSTANCE_ID
                float4 posWorld : TEXCOORD0;
                float3 normalDir : TEXCOORD1;
                LIGHTING_COORDS(2,3)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                UNITY_SETUP_INSTANCE_ID( v );
                UNITY_TRANSFER_INSTANCE_ID( v, o );
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                o.pos = UnityObjectToClipPos( v.vertex );
                TRANSFER_VERTEX_TO_FRAGMENT(o)
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                UNITY_SETUP_INSTANCE_ID( i );
                i.normalDir = normalize(i.normalDir);
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float3 normalDirection = i.normalDir;
                float3 lightDirection = normalize(lerp(_WorldSpaceLightPos0.xyz, _WorldSpaceLightPos0.xyz - i.posWorld.xyz,_WorldSpaceLightPos0.w));
////// Lighting:
                float3 finalColor = 0;
                return fixed4(finalColor * 1,0);
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
