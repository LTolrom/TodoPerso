dict_articulation={"poignet droit": (18,16,14),
            "poignet gauche":(17,15,13),
            "coude droit":(16,14,12),
            "coude gauche":(15,13,11),
            "epaule droite":(14,12,24),
            "epaule gauche":(13,11,23),
            "hanche droite":(12,24,25),
            "hanche gauche":(11,23,25),
            "genou droit":(24,26,28),
            "genou gauche":(23,25,27),
            "chevile droite":(26,28,30),
            "chevile gauche":(25,27,29)}
articulation_analyse=("genou droit","genou gauche")
shared_dict=[]

for i in articulation_analyse:
    if (i in dict_articulation.keys()):
        print(i)
        shared_dict.append(i)

print(shared_dict)

my_dict = {"Name":[],"Address":[],"Age":[]};

my_dict["Name"].append("Guru")
my_dict["Address"].append("Mumbai")
my_dict["Age"].append(30)	
print(my_dict)