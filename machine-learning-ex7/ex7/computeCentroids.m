function centroids = computeCentroids(X, idx, K)
%COMPUTECENTROIDS returns the new centroids by computing the means of the 
%data points assigned to each centroid.
%   centroids = COMPUTECENTROIDS(X, idx, K) returns the new centroids by 
%   computing the means of the data points assigned to each centroid. It is
%   given a dataset X where each row is a single data point, a vector
%   idx of centroid assignments (i.e. each entry in range [1..K]) for each
%   example, and K, the number of centroids. You should return a matrix
%   centroids, where each row of centroids is the mean of the data points
%   assigned to it.
%

% Useful variables
[m n] = size(X);

% You need to return the following variables correctly.
centroids = zeros(K, n);


% ====================== YOUR CODE HERE ======================
% Instructions: Go over every centroid and compute mean of all points that
%               belong to it. Concretely, the row vector centroids(i, :)
%               should contain the mean of the data points assigned to
%               centroid i.
%
% Note: You can use a for-loop over the centroids to compute this.
%

%centroids:k*n维，idx:n*1维，X：m*n维
% for j = 1:K
%     xj = X(find(idx == j),:);%表明这些行是第j类
%     centroids(j,:) = 1/length(xj) * sum(xj);
% end
%     

% 向量化代码
for i = 1 : K
    % 找到第i个中心所包含的点的个数
    s = sum(idx == i);
    if (s ~= 0)
        centroids(i,:) = mean( X(find(idx == i),:) );
    else
        centroids(i,:) = zeros(1,n);
    end
end

    








% =============================================================


end

