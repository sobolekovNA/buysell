package com.example.buysell.controller;

import com.example.buysell.models.Image;
import com.example.buysell.repositories.ImageRepository;
import lombok.RequiredArgsConstructor;
import org.apache.commons.io.IOUtils;
import org.springframework.http.MediaType;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RestController;

import java.io.ByteArrayInputStream;
import java.io.IOException;

@RestController
@RequiredArgsConstructor
public class ImageController {
    private final ImageRepository imageRepository;

    @GetMapping(value = "/images/{id}", produces = MediaType.IMAGE_JPEG_VALUE)
    private byte[] getImageById(@PathVariable Long id) throws IOException {
        Image image = imageRepository.findById(id).orElse(null);
        return IOUtils.toByteArray(new ByteArrayInputStream(image.getBytes()));
    }
}
