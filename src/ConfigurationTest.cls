USING OpenEdge.Core.Assert.

BLOCK-LEVEL ON ERROR UNDO, THROW.

CLASS ConfigurationTest:

    @Test.
    METHOD PUBLIC VOID testEnergyDrinkReturnsRedBullRacing():
        Assert:Equals("RedBullRacing", Configuration:getConfiguration("EnergyDrink")).
    END METHOD.

    @Test.
    METHOD PUBLIC VOID testPapayaReturnsMcLaren():
        Assert:Equals("McLaren", Configuration:getConfiguration("Papaya")).
    END METHOD.

    @Test.
    METHOD PUBLIC VOID testSilberpfeileReturnsMercedes():
        Assert:Equals("Mercedes", Configuration:getConfiguration("Silberpfeile")).
    END METHOD.

    @Test.
    METHOD PUBLIC VOID testFrenchStuffReturnsAlpine():
        Assert:Equals("Alpine", Configuration:getConfiguration("FrenchStuff")).
    END METHOD.

    @Test.
    METHOD PUBLIC VOID testPapaStrollReturnsAstonMartin():
        Assert:Equals("AstonMartin", Configuration:getConfiguration("PapaStroll")).
    END METHOD.

    @Test.
    METHOD PUBLIC VOID testMaffiosiReturnsFerrari():
        Assert:Equals("Ferrari", Configuration:getConfiguration("Maffiosi")).
    END METHOD.

    @Test.
    METHOD PUBLIC VOID testLookupIsCaseInsensitive():
        Assert:Equals("McLaren", Configuration:getConfiguration("papaya")).
    END METHOD.

    @Test.
    METHOD PUBLIC VOID testUnknownTypeReturnsUnknownValue():
        Assert:IsUnknown(Configuration:getConfiguration("Unknown")).
    END METHOD.

    @Test.
    METHOD PUBLIC VOID testEmptyTypeReturnsUnknownValue():
        Assert:IsUnknown(Configuration:getConfiguration("")).
    END METHOD.

END CLASS.
