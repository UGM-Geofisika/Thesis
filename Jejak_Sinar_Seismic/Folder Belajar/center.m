function out = center(data, desired)
    out = (data - mean(data(:))) + desired;
end