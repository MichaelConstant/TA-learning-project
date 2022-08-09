// Shader created with Shader Forge v1.40 
// Shader Forge (c) Freya Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.40;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,cpap:True,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:0,bdst:1,dpts:2,wrdp:True,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:False,aust:True,igpj:False,qofs:0,qpre:1,rntp:1,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,atwp:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:3138,x:32784,y:32731,varname:node_3138,prsc:2|emission-4392-OUT,olwid-8198-OUT,olcol-2932-OUT;n:type:ShaderForge.SFN_ScreenPos,id:2100,x:31453,y:32590,varname:node_2100,prsc:2,sctp:1;n:type:ShaderForge.SFN_Slider,id:8796,x:31296,y:32792,ptovrint:False,ptlb:DotSize,ptin:_DotSize,varname:node_8796,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:10,cur:20,max:100;n:type:ShaderForge.SFN_Multiply,id:2823,x:31674,y:32679,varname:node_2823,prsc:2|A-2100-UVOUT,B-8796-OUT;n:type:ShaderForge.SFN_Frac,id:8371,x:31860,y:32679,varname:node_8371,prsc:2|IN-2823-OUT;n:type:ShaderForge.SFN_RemapRange,id:9128,x:32036,y:32679,varname:node_9128,prsc:2,frmn:0,frmx:1,tomn:-0.5,tomx:0.5|IN-8371-OUT;n:type:ShaderForge.SFN_Length,id:7357,x:32215,y:32679,varname:node_7357,prsc:2|IN-9128-OUT;n:type:ShaderForge.SFN_LightVector,id:1142,x:31674,y:32861,varname:node_1142,prsc:2;n:type:ShaderForge.SFN_NormalVector,id:6227,x:31674,y:33041,prsc:2,pt:False;n:type:ShaderForge.SFN_Dot,id:5057,x:31852,y:32958,varname:node_5057,prsc:2,dt:1|A-1142-OUT,B-6227-OUT;n:type:ShaderForge.SFN_LightAttenuation,id:7732,x:31852,y:33148,varname:node_7732,prsc:2;n:type:ShaderForge.SFN_Multiply,id:2172,x:32030,y:33055,varname:node_2172,prsc:2|A-5057-OUT,B-7732-OUT;n:type:ShaderForge.SFN_RemapRange,id:6974,x:32222,y:33055,varname:node_6974,prsc:2,frmn:1,frmx:0,tomn:-0.5,tomx:2|IN-2172-OUT;n:type:ShaderForge.SFN_Power,id:1645,x:32392,y:32895,varname:node_1645,prsc:2|VAL-7357-OUT,EXP-6974-OUT;n:type:ShaderForge.SFN_Vector1,id:8198,x:32587,y:33054,varname:node_8198,prsc:2,v1:0.02;n:type:ShaderForge.SFN_Vector3,id:2932,x:32587,y:33125,varname:node_2932,prsc:2,v1:0,v2:0,v3:0;n:type:ShaderForge.SFN_Round,id:4392,x:32587,y:32895,varname:node_4392,prsc:2|IN-1645-OUT;proporder:8796;pass:END;sub:END;*/

Shader "AP1/L02/Halftone" {
    Properties {
        _DotSize ("DotSize", Range(10, 100)) = 20
    }
    SubShader {
        Tags {
            "RenderType"="Opaque"
        }
        Pass {
            Name "Outline"
            Tags {
            }
            Cull Front
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #include "UnityCG.cginc"
            #pragma fragmentoption ARB_precision_hint_fastest
            #pragma multi_compile_shadowcaster
            #pragma target 3.0
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.pos = UnityObjectToClipPos( float4(v.vertex.xyz + v.normal*0.02,1) );
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                return fixed4(float3(0,0,0),0);
            }
            ENDCG
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
            #include "Lighting.cginc"
            #pragma multi_compile_fwdbase_fullshadows
            #pragma target 3.0
            UNITY_INSTANCING_BUFFER_START( Props )
                UNITY_DEFINE_INSTANCED_PROP( float, _DotSize)
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
                float4 projPos : TEXCOORD2;
                LIGHTING_COORDS(3,4)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                UNITY_SETUP_INSTANCE_ID( v );
                UNITY_TRANSFER_INSTANCE_ID( v, o );
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                o.pos = UnityObjectToClipPos( v.vertex );
                o.projPos = ComputeScreenPos (o.pos);
                COMPUTE_EYEDEPTH(o.projPos.z);
                TRANSFER_VERTEX_TO_FRAGMENT(o)
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                UNITY_SETUP_INSTANCE_ID( i );
                i.normalDir = normalize(i.normalDir);
                float3 normalDirection = i.normalDir;
                float2 sceneUVs = (i.projPos.xy / i.projPos.w);
                float3 lightDirection = normalize(_WorldSpaceLightPos0.xyz);
////// Lighting:
                float attenuation = LIGHT_ATTENUATION(i);
////// Emissive:
                float _DotSize_var = UNITY_ACCESS_INSTANCED_PROP( Props, _DotSize );
                float node_4392 = round(pow(length((frac((float2((sceneUVs.x * 2 - 1)*(_ScreenParams.r/_ScreenParams.g), sceneUVs.y * 2 - 1).rg*_DotSize_var))*1.0+-0.5)),((max(0,dot(lightDirection,i.normalDir))*attenuation)*-2.5+2.0)));
                float3 emissive = float3(node_4392,node_4392,node_4392);
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
            #include "Lighting.cginc"
            #pragma multi_compile_fwdadd_fullshadows
            #pragma target 3.0
            UNITY_INSTANCING_BUFFER_START( Props )
                UNITY_DEFINE_INSTANCED_PROP( float, _DotSize)
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
                float4 projPos : TEXCOORD2;
                LIGHTING_COORDS(3,4)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                UNITY_SETUP_INSTANCE_ID( v );
                UNITY_TRANSFER_INSTANCE_ID( v, o );
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                o.pos = UnityObjectToClipPos( v.vertex );
                o.projPos = ComputeScreenPos (o.pos);
                COMPUTE_EYEDEPTH(o.projPos.z);
                TRANSFER_VERTEX_TO_FRAGMENT(o)
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                UNITY_SETUP_INSTANCE_ID( i );
                i.normalDir = normalize(i.normalDir);
                float3 normalDirection = i.normalDir;
                float2 sceneUVs = (i.projPos.xy / i.projPos.w);
                float3 lightDirection = normalize(lerp(_WorldSpaceLightPos0.xyz, _WorldSpaceLightPos0.xyz - i.posWorld.xyz,_WorldSpaceLightPos0.w));
////// Lighting:
                float attenuation = LIGHT_ATTENUATION(i);
                float3 finalColor = 0;
                return fixed4(finalColor * 1,0);
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
