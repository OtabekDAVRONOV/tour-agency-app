// ignore_for_file: must_be_immutable, avoid_unnecessary_containers

import 'package:flutter/material.dart';

class TravelDetails extends StatefulWidget {
  String cityName;
  String cityId;
  String cityImage;
  TravelDetails(this.cityName, this.cityId, this.cityImage, {Key? key})
      : super(key: key);

  @override
  _TravelDetailsState createState() => _TravelDetailsState();
}

class _TravelDetailsState extends State<TravelDetails> {
  bool flight = false;
  bool beach = false;
  bool sailing = false;
  bool hotel = false;
  bool spa = false;
  double total = 0;
  double flightPrice = 200.0;
  double beachPrice = 50.0;
  double sailingPrice = 60.0;
  double hotelPrice = 40.0;
  double spaPrice = 70.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            title: Text(widget.cityId),
            centerTitle: true,
            pinned: true,
            expandedHeight: 180.0,
            collapsedHeight: 70.0,
            
            flexibleSpace: FlexibleSpaceBar(
              title: Text(
                widget.cityName + " (${widget.cityId})",
                style: const TextStyle(color: Colors.white),
              ),
              background: Image(
                image: NetworkImage(widget.cityImage),
                fit: BoxFit.cover,
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                SwitchListTile(
                  value: flight,
                  title: const Text("Flight"),
                  subtitle: Text("\$" + flightPrice.toString()),
                  onChanged: (e) {
                    setState(() {
                      flight = e;
                      if (e == true) {
                        total = total + flightPrice;
                      }else{total = total - flightPrice;}
                    });
                  },
                ),
                SwitchListTile(
                  value: beach,
                  title: const Text("Beach"),
                  subtitle: Text("\$" + beachPrice.toString()),
                  onChanged: (e) {
                    setState(() {
                      beach = e;
                      
                    });if (e == true) {
                        total = total + beachPrice;
                      }else{total = total - beachPrice;}
                  },
                ),
                SwitchListTile(
                  value: sailing,
                  title: const Text("Sailing"),
                  subtitle: Text("\$" + sailingPrice.toString()),
                  onChanged: (e) {
                    setState(() {
                      sailing = e;
                      
                    });if (e == true) {
                        total = total + sailingPrice;
                      }else{total = total - sailingPrice;}
                  },
                ),
                SwitchListTile(
                  value: hotel,
                  title: const Text("Hotel"),
                  subtitle: Text("\$" + hotelPrice.toString()),
                  onChanged: (e) {
                    setState(() {
                      hotel = e;
                      
                    });if (e == true) {
                        total = total + hotelPrice;
                      }else{total = total - hotelPrice;}
                  },
                ),
                SwitchListTile(
                  value: spa,
                  title: const Text("Spa"),
                  subtitle: Text("\$" + spaPrice.toString()),
                  onChanged: (e) {
                    setState(
                      () {
                        spa = e;
                        
                      },
                    );if (e == true) {
                          total = total + spaPrice;
                        }else{total = total - spaPrice;}
                  },
                ),
                const Divider(height: 1),
                Container(
                  child: ListTile(
                    leading: const Text("Total:"),
                    trailing: Text("\$" + total.toString()),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
