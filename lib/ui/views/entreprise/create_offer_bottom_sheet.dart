import 'dart:io';

import 'package:fading_edge_scrollview/fading_edge_scrollview.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:mobile_app/ui/presentation/extensions/media_query.dart';
import 'package:provider/provider.dart';

import '../../../core/models/offer.dart';
import '../../../core/viewmodels/offer_view_model.dart';
import '../../presentation/presentation.dart';
import '../../widgets/curve_painter.dart';

class CreateOfferBottomSheet extends StatefulWidget {
  const CreateOfferBottomSheet({super.key, this.offer});

  final Offer? offer;

  @override
  State<CreateOfferBottomSheet> createState() => _CreateOfferBottomSheetState();
}

class _CreateOfferBottomSheetState extends State<CreateOfferBottomSheet> {
  File? _pickedImage;
  final TextEditingController _titleController = TextEditingController();
  final TextEditingController _descriptionController = TextEditingController();
  final TextEditingController _companyController = TextEditingController();
  final TextEditingController _salaryController = TextEditingController();
  final TextEditingController _locationController = TextEditingController();
  final TextEditingController _categoryController = TextEditingController();
  bool _changeImage = false;
  final ScrollController _scrollController = ScrollController();

  @override
  initState() {
    super.initState();
    _initValues();
  }

  _initValues() {
    if (widget.offer != null) {
      _titleController.text = widget.offer!.title;
      _descriptionController.text = widget.offer!.description;
      _companyController.text = widget.offer!.company;
      _salaryController.text = widget.offer!.salary.toString();
      _locationController.text = widget.offer!.location;
      _categoryController.text = widget.offer!.category.toString();
    }
  }

  Future<void> _pickImageFromGallery() async {
    final ImagePicker picker = ImagePicker();

    final XFile? pickedFile = await picker.pickImage(source: ImageSource.gallery);

    if (pickedFile != null) {
      setState(() {
        _pickedImage = File(pickedFile.path);
      });
    } else {
      if (context.mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text('No image selected'),
          ),
        );
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: GestureDetector(
        onTap: () {},
        child: DraggableScrollableSheet(
          initialChildSize: 0.75,
          builder: (context, scrollController) => CustomPaint(
            size: Size(context.width, context.height * 0.1),
            painter: CurvePainter(
              reversed: true,
              colors: [
                Colors.white,
                Colors.white,
              ],
              deviceHeight: context.height,
              direction: Axis.vertical,
              curveStrength: 1.5,
            ),
            child: Center(
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: Dimensions.md,
                ),
                child: Column(
                  children: [
                    const SizedBox(height: 30),
                    const Text(
                      'Create New Offer',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 20),
                    Expanded(
                      child: FadingEdgeScrollView.fromSingleChildScrollView(
                        child: SingleChildScrollView(
                          controller: _scrollController,
                          child: Column(
                            children: [
                              TextField(
                                controller: _titleController,
                                decoration: InputDecoration(
                                  labelText: 'title',
                                  hintStyle: TextStyles.body0Semibold(color: Colors.black),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(Dimensions.sm),
                                    borderSide: BorderSide(color: Colors.black.withOpacity(0.8)),
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(Dimensions.sm),
                                    borderSide: BorderSide(color: Colors.black.withOpacity(0.8)),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(Dimensions.sm),
                                    borderSide: BorderSide(color: Colors.black.withOpacity(0.8)),
                                  ),
                                  filled: true,
                                  fillColor: Colors.white,
                                  contentPadding: const EdgeInsets.symmetric(
                                    horizontal: Dimensions.sm,
                                    vertical: Dimensions.xxxs,
                                  ),
                                ),
                                style: TextStyles.calloutRegular(color: Colors.black),
                              ),
                              const SizedBox(height: 20),
                              TextField(
                                controller: _descriptionController,
                                decoration: InputDecoration(
                                  labelText: 'description',
                                  hintStyle: TextStyles.body0Semibold(color: Colors.black),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(Dimensions.sm),
                                    borderSide: BorderSide(color: Colors.black.withOpacity(0.8)),
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(Dimensions.sm),
                                    borderSide: BorderSide(color: Colors.black.withOpacity(0.8)),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(Dimensions.sm),
                                    borderSide: BorderSide(color: Colors.black.withOpacity(0.8)),
                                  ),
                                  filled: true,
                                  fillColor: Colors.white,
                                  contentPadding: const EdgeInsets.symmetric(
                                    horizontal: Dimensions.sm,
                                    vertical: Dimensions.xxxs,
                                  ),
                                ),
                                style: TextStyles.calloutRegular(color: Colors.black),
                              ),
                              const SizedBox(height: 20),
                              TextField(
                                controller: _companyController,
                                decoration: InputDecoration(
                                  labelText: 'company',
                                  hintStyle: TextStyles.body0Semibold(color: Colors.black),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(Dimensions.sm),
                                    borderSide: BorderSide(color: Colors.black.withOpacity(0.8)),
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(Dimensions.sm),
                                    borderSide: BorderSide(color: Colors.black.withOpacity(0.8)),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(Dimensions.sm),
                                    borderSide: BorderSide(color: Colors.black.withOpacity(0.8)),
                                  ),
                                  filled: true,
                                  fillColor: Colors.white,
                                  contentPadding: const EdgeInsets.symmetric(
                                    horizontal: Dimensions.sm,
                                    vertical: Dimensions.xxxs,
                                  ),
                                ),
                                style: TextStyles.calloutRegular(color: Colors.black),
                              ),
                              const SizedBox(height: 20),
                              Row(
                                children: [
                                  Expanded(
                                    child: TextField(
                                      controller: _salaryController,
                                      decoration: InputDecoration(
                                        labelText: 'salary',
                                        hintStyle: TextStyles.body0Semibold(color: Colors.black),
                                        border: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(Dimensions.sm),
                                          borderSide: BorderSide(color: Colors.black.withOpacity(0.8)),
                                        ),
                                        enabledBorder: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(Dimensions.sm),
                                          borderSide: BorderSide(color: Colors.black.withOpacity(0.8)),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(Dimensions.sm),
                                          borderSide: BorderSide(color: Colors.black.withOpacity(0.8)),
                                        ),
                                        filled: true,
                                        fillColor: Colors.white,
                                        contentPadding: const EdgeInsets.symmetric(
                                          horizontal: Dimensions.sm,
                                          vertical: Dimensions.xxxs,
                                        ),
                                      ),
                                      style: TextStyles.calloutRegular(color: Colors.black),
                                    ),
                                  ),
                                  const SizedBox(width: 20),
                                  Expanded(
                                    child: TextField(
                                      controller: _locationController,
                                      decoration: InputDecoration(
                                        labelText: 'location',
                                        hintStyle: TextStyles.body0Semibold(color: Colors.black),
                                        border: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(Dimensions.sm),
                                          borderSide: BorderSide(color: Colors.black.withOpacity(0.8)),
                                        ),
                                        enabledBorder: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(Dimensions.sm),
                                          borderSide: BorderSide(color: Colors.black.withOpacity(0.8)),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(Dimensions.sm),
                                          borderSide: BorderSide(color: Colors.black.withOpacity(0.8)),
                                        ),
                                        filled: true,
                                        fillColor: Colors.white,
                                        contentPadding: const EdgeInsets.symmetric(
                                          horizontal: Dimensions.sm,
                                          vertical: Dimensions.xxxs,
                                        ),
                                      ),
                                      style: TextStyles.calloutRegular(color: Colors.black),
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 20),
                              TextField(
                                controller: _categoryController,
                                decoration: InputDecoration(
                                  labelText: 'category',
                                  hintStyle: TextStyles.body0Semibold(color: Colors.black),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(Dimensions.sm),
                                    borderSide: BorderSide(color: Colors.black.withOpacity(0.8)),
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(Dimensions.sm),
                                    borderSide: BorderSide(color: Colors.black.withOpacity(0.8)),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(Dimensions.sm),
                                    borderSide: BorderSide(color: Colors.black.withOpacity(0.8)),
                                  ),
                                  filled: true,
                                  fillColor: Colors.white,
                                  contentPadding: const EdgeInsets.symmetric(
                                    horizontal: Dimensions.sm,
                                    vertical: Dimensions.xxxs,
                                  ),
                                ),
                                style: TextStyles.calloutRegular(color: Colors.black),
                              ),
                              const SizedBox(height: 20),
                              widget.offer != null && !_changeImage
                                  ? Stack(
                                      clipBehavior: Clip.none,
                                      children: [
                                        Image.asset(
                                          widget.offer!.imageUrl,
                                          width: 100,
                                          height: 100,
                                        ),
                                        Positioned(
                                          right: -5,
                                          top: -5,
                                          child: GestureDetector(
                                            onTap: () {
                                              setState(() {
                                                _pickedImage = null;
                                                _changeImage = true;
                                              });
                                            },
                                            child: Container(
                                              padding: const EdgeInsets.all(4),
                                              decoration: const BoxDecoration(
                                                color: Colors.purple,
                                                shape: BoxShape.circle,
                                              ),
                                              child: const Icon(Icons.close, size: 15, color: Colors.white),
                                            ),
                                          ),
                                        ),
                                      ],
                                    )
                                  : _pickedImage != null
                                      ? Stack(
                                          clipBehavior: Clip.none,
                                          children: [
                                            Image.file(
                                              _pickedImage!,
                                              width: 100,
                                              height: 100,
                                              fit: BoxFit.cover,
                                            ),
                                            Positioned(
                                              right: -10,
                                              top: -10,
                                              child: GestureDetector(
                                                onTap: () {
                                                  setState(() {
                                                    _pickedImage = null;
                                                  });
                                                },
                                                child: Container(
                                                  padding: const EdgeInsets.all(4),
                                                  decoration: const BoxDecoration(
                                                    color: Colors.purple,
                                                    shape: BoxShape.circle,
                                                  ),
                                                  child: const Icon(Icons.close, size: 15, color: Colors.white),
                                                ),
                                              ),
                                            ),
                                          ],
                                        )
                                      : ElevatedButton(
                                          onPressed: _pickImageFromGallery,
                                          child: const Text('Select Company Logo'),
                                        ),
                              const SizedBox(height: 20),
                              ElevatedButton(
                                onPressed: () {
                                  if (widget.offer != null) {
                                    Offer offer = Offer(
                                      id: widget.offer!.id,
                                      title: _titleController.text,
                                      description: _descriptionController.text,
                                      company: _companyController.text,
                                      salary: double.parse(_salaryController.text),
                                      location: _locationController.text,
                                      category: _categoryController.text.split(','),
                                      imageUrl: widget.offer!.imageUrl,
                                      file: _pickedImage,
                                    );
                                    context.read<OfferViewModel>().updateOffer(offer);
                                    Navigator.pop(context);
                                  } else {
                                    Offer offer = Offer(
                                      id: DateTime.now().toString(),
                                      title: _titleController.text,
                                      description: _descriptionController.text,
                                      company: _companyController.text,
                                      salary: double.parse(_salaryController.text),
                                      location: _locationController.text,
                                      category: _categoryController.text.split(','),
                                      imageUrl: 'assets/Creative_Minds.png',
                                      file: _pickedImage,
                                    );
                                    context.read<OfferViewModel>().addOffer(offer);
                                    Navigator.pop(context);
                                  }
                                },
                                child: widget.offer != null ? const Text('Change ') : const Text('Create '),
                              ),
                            ],
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
