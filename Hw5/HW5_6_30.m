% 讀取兩張圖片
img1 = imread('test13.png'); % 低光照圖
img2 = imread('test13_2.png'); % 增強後的圖

% 轉換為 YUV 色彩空間
img1_YUV = rgb2ycbcr(img1);
img2_YUV = rgb2ycbcr(img2);

% 分離 Y, U, V 通道
Y1 = img1_YUV(:,:,1); U1 = img1_YUV(:,:,2); V1 = img1_YUV(:,:,3);
Y2 = img2_YUV(:,:,1); U2 = img2_YUV(:,:,2); V2 = img2_YUV(:,:,3);

% 繪製 Y、U、V 直方圖
figure;
subplot(3,2,1); imhist(Y1); title('Image 1 - Y (亮度)');
subplot(3,2,2); imhist(Y2); title('Image 2 - Y (亮度)');
subplot(3,2,3); imhist(U1); title('Image 1 - U (藍色色度)');
subplot(3,2,4); imhist(U2); title('Image 2 - U (藍色色度)');
subplot(3,2,5); imhist(V1); title('Image 1 - V (紅色色度)');
subplot(3,2,6); imhist(V2); title('Image 2 - V (紅色色度)');

% 計算 U, V 的變化程度
Y_diff = immse(Y1, Y2);
U_diff = immse(U1, U2);
V_diff = immse(V1, V2);

% 顯示變化程度
fprintf('Y 通道變化程度 (MSE): %.4f\n', Y_diff);
fprintf('cb 通道變化程度 (MSE): %.4f\n', U_diff);
fprintf('cr 通道變化程度 (MSE): %.4f\n', V_diff);

% 判斷變化類型
if U_diff < 1e-3 && V_diff < 1e-3
    disp('主要是亮度變化，顏色變化很小');
else
    disp('顏色發生變化');
end