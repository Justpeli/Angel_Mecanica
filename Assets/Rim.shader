Shader "2doParc/Rim"
{
   Properties{

    }
    SubShader{
        CGPROGRAM

        #pragma surface surf Lambert
        float4 _RimColor;
        half _RimPower;
        struct Input{
            float3 viewDir;
            float3 worldPos;

        };

        void surf(Input IN, inout SurfaceOutput o){
            half rim = 1 - saturate( dot(IN.viewDir , o.Normal));
            o.Emission = rim;
        }
        ENDCG
    }
}