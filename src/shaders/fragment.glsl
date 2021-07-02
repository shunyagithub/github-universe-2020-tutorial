varying vec2 vUv;
uniform float uTime;
uniform sampler2D uTexture;

void main() {
  float time = uTime;

  vec2 uv = vUv;
  uv.x += sin(uv.x * 0.5);
  vec2 repeat = vec2(12.0, 12.0);
  uv = fract(uv * repeat + vec2(0.0, time * 0.5));
  
  vec4 color = texture2D(uTexture, uv);
  
  gl_FragColor = color;
}