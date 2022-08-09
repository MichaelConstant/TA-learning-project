// Shader created with Shader Forge v1.40 
// Shader Forge (c) Freya Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.40;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,cpap:True,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:0,bdst:1,dpts:2,wrdp:True,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:False,aust:True,igpj:False,qofs:0,qpre:1,rntp:1,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,atwp:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:3138,x:32719,y:32712,varname:node_3138,prsc:2|emission-7212-OUT,olwid-8563-OUT,olcol-9410-RGB;n:type:ShaderForge.SFN_NormalVector,id:1604,x:31572,y:32961,prsc:2,pt:False;n:type:ShaderForge.SFN_LightVector,id:1418,x:31572,y:33147,varname:node_1418,prsc:2;n:type:ShaderForge.SFN_Dot,id:8906,x:31788,y:33043,varname:node_8906,prsc:2,dt:0|A-1604-OUT,B-1418-OUT;n:type:ShaderForge.SFN_ScreenPos,id:4489,x:31398,y:32703,varname:node_4489,prsc:2,sctp:0;n:type:ShaderForge.SFN_Depth,id:1035,x:31398,y:32880,varname:node_1035,prsc:2;n:type:ShaderForge.SFN_Multiply,id:1806,x:31572,y:32809,varname:node_1806,prsc:2|A-4489-UVOUT,B-1035-OUT;n:type:ShaderForge.SFN_Tex2d,id:8547,x:31788,y:32809,ptovrint:False,ptlb:TextureInput,ptin:_TextureInput,varname:node_8547,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:fc9e2cfc434b54a4fb4bc77a71ffc444,ntxv:0,isnm:False|UVIN-1806-OUT;n:type:ShaderForge.SFN_Step,id:6837,x:31978,y:32956,varname:node_6837,prsc:2|A-8547-RGB,B-8906-OUT;n:type:ShaderForge.SFN_Color,id:9976,x:31978,y:32538,ptovrint:False,ptlb:Dark,ptin:_Dark,varname:node_9976,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.1607843,c2:0.5490196,c3:0.627451,c4:1;n:type:ShaderForge.SFN_Color,id:82,x:31978,y:32736,ptovrint:False,ptlb:Light,ptin:_Light,varname:node_82,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.7176471,c2:0.7215686,c3:0.6745098,c4:1;n:type:ShaderForge.SFN_Lerp,id:8305,x:32209,y:32663,varname:node_8305,prsc:2|A-9976-RGB,B-82-RGB,T-6837-OUT;n:type:ShaderForge.SFN_Slider,id:8563,x:32278,y:33117,ptovrint:False,ptlb:OutlineWidth,ptin:_OutlineWidth,varname:node_8563,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.01,max:0.05;n:type:ShaderForge.SFN_Color,id:9410,x:32435,y:33224,ptovrint:False,ptlb:OutlineColor,ptin:_OutlineColor,varname:node_9410,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.3882353,c2:0.2039216,c3:0.1843137,c4:1;n:type:ShaderForge.SFN_Color,id:8011,x:31788,y:33257,ptovrint:False,ptlb:MultiplyColor,ptin:_MultiplyColor,varname:node_8011,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.5,c2:0.5,c3:0.5,c4:1;n:type:ShaderForge.SFN_Multiply,id:7559,x:31978,y:33142,varname:node_7559,prsc:2|A-8906-OUT,B-8011-RGB;n:type:ShaderForge.SFN_Add,id:7212,x:32475,y:32819,varname:node_7212,prsc:2|A-8305-OUT,B-7559-OUT;proporder:8547-9976-82-8563-9410-8011;pass:END;sub:END;*/

Shader "AP1/L02/Stripe" {
    Properties {
        _TextureInput ("TextureInput", 2D) = "white" {}
        _Dark ("Dark", Color) = (0.1607843,0.5490196,0.627451,1)
        _Light ("Light", Color) = (0.7176471,0.7215686,0.6745098,1)
        _OutlineWidth ("OutlineWidth", Range(0, 0.05)) = 0.01
        _OutlineColor ("OutlineColor", Color) = (0.3882353,0.2039216,0.1843137,1)
        _MultiplyColor ("MultiplyColor", Color) = (0.5,0.5,0.5,1)
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
            #pragma multi_compile_instancing
            #include "UnityCG.cginc"
            #pragma fragmentoption ARB_precision_hint_fastest
            #pragma multi_compile_shadowcaster
            #pragma target 3.0
            UNITY_INSTANCING_BUFFER_START( Props )
                UNITY_DEFINE_INSTANCED_PROP( float, _OutlineWidth)
                UNITY_DEFINE_INSTANCED_PROP( float4, _OutlineColor)
            UNITY_INSTANCING_BUFFER_END( Props )
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                UNITY_VERTEX_INPUT_INSTANCE_ID
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                UNITY_SETUP_INSTANCE_ID( v );
                UNITY_TRANSFER_INSTANCE_ID( v, o );
                float _OutlineWidth_var = UNITY_ACCESS_INSTANCED_PROP( Props, _OutlineWidth );
                o.pos = UnityObjectToClipPos( float4(v.vertex.xyz + v.normal*_OutlineWidth_var,1) );
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                UNITY_SETUP_INSTANCE_ID( i );
                float4 _OutlineColor_var = UNITY_ACCESS_INSTANCED_PROP( Props, _OutlineColor );
                return fixed4(_OutlineColor_var.rgb,0);
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
            #pragma multi_compile_fwdbase_fullshadows
            #pragma target 3.0
            uniform sampler2D _TextureInput; uniform float4 _TextureInput_ST;
            UNITY_INSTANCING_BUFFER_START( Props )
                UNITY_DEFINE_INSTANCED_PROP( float4, _Dark)
                UNITY_DEFINE_INSTANCED_PROP( float4, _Light)
                UNITY_DEFINE_INSTANCED_PROP( float4, _MultiplyColor)
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
                float partZ = max(0,i.projPos.z - _ProjectionParams.g);
                float2 sceneUVs = (i.projPos.xy / i.projPos.w);
                float3 lightDirection = normalize(_WorldSpaceLightPos0.xyz);
////// Lighting:
////// Emissive:
                float4 _Dark_var = UNITY_ACCESS_INSTANCED_PROP( Props, _Dark );
                float4 _Light_var = UNITY_ACCESS_INSTANCED_PROP( Props, _Light );
                float2 node_1806 = ((sceneUVs * 2 - 1).rg*partZ);
                float4 _TextureInput_var = tex2D(_TextureInput,TRANSFORM_TEX(node_1806, _TextureInput));
                float node_8906 = dot(i.normalDir,lightDirection);
                float4 _MultiplyColor_var = UNITY_ACCESS_INSTANCED_PROP( Props, _MultiplyColor );
                float3 emissive = (lerp(_Dark_var.rgb,_Light_var.rgb,step(_TextureInput_var.rgb,node_8906))+(node_8906*_MultiplyColor_var.rgb));
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
            uniform sampler2D _TextureInput; uniform float4 _TextureInput_ST;
            UNITY_INSTANCING_BUFFER_START( Props )
                UNITY_DEFINE_INSTANCED_PROP( float4, _Dark)
                UNITY_DEFINE_INSTANCED_PROP( float4, _Light)
                UNITY_DEFINE_INSTANCED_PROP( float4, _MultiplyColor)
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
                float partZ = max(0,i.projPos.z - _ProjectionParams.g);
                float2 sceneUVs = (i.projPos.xy / i.projPos.w);
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
