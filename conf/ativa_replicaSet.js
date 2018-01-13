rs.initiate( {_id : "rs0",members: [{ _id : 0, host : "mongodb01:27017"}]});
rs.addArb("mongodb01:10101");
rs.add("mongodb01:27017");