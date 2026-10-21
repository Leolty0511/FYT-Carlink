.class public Lmodule/canbus/r$i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmodule/canbus/r;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lmodule/canbus/r;


# direct methods
.method public constructor <init>(Lmodule/canbus/r;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lmodule/canbus/r$i;->a:Lmodule/canbus/r;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lmodule/canbus/r$i;->a:Lmodule/canbus/r;

    iget v1, v0, Lmodule/canbus/r;->F:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    iput v1, v0, Lmodule/canbus/r;->F:I

    const/4 v3, 0x5

    if-lez v1, :cond_b

    .line 2
    sget v0, Lk0/nt;->c:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_0

    :pswitch_1
    new-array v0, v3, [I

    .line 3
    fill-array-data v0, :array_0

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_0

    :pswitch_2
    new-array v0, v3, [I

    .line 4
    fill-array-data v0, :array_1

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_0

    :pswitch_3
    new-array v0, v3, [I

    .line 5
    fill-array-data v0, :array_2

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_0

    :pswitch_4
    new-array v0, v3, [I

    .line 6
    fill-array-data v0, :array_3

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_0

    :pswitch_5
    new-array v0, v3, [I

    .line 7
    fill-array-data v0, :array_4

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_0

    :pswitch_6
    new-array v0, v3, [I

    .line 8
    fill-array-data v0, :array_5

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_0

    :pswitch_7
    new-array v0, v3, [I

    .line 9
    fill-array-data v0, :array_6

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_0

    :pswitch_8
    new-array v0, v3, [I

    .line 10
    fill-array-data v0, :array_7

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_0

    :pswitch_9
    new-array v0, v3, [I

    .line 11
    fill-array-data v0, :array_8

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_0

    :pswitch_a
    new-array v0, v3, [I

    .line 12
    fill-array-data v0, :array_9

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_0

    :pswitch_b
    new-array v0, v3, [I

    .line 13
    fill-array-data v0, :array_a

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_0

    :pswitch_c
    new-array v0, v3, [I

    .line 14
    fill-array-data v0, :array_b

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_0

    :pswitch_d
    new-array v0, v3, [I

    .line 15
    fill-array-data v0, :array_c

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_0

    :pswitch_e
    new-array v0, v3, [I

    .line 16
    fill-array-data v0, :array_d

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_0

    :pswitch_f
    new-array v0, v3, [I

    .line 17
    fill-array-data v0, :array_e

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_0

    :pswitch_10
    const/4 v0, 0x7

    new-array v0, v0, [B

    .line 18
    fill-array-data v0, :array_f

    invoke-static {v0}, Lmodule/canbus/r;->K3([B)V

    goto/16 :goto_0

    :pswitch_11
    new-array v0, v3, [I

    .line 19
    fill-array-data v0, :array_10

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_0

    :pswitch_12
    new-array v0, v3, [I

    .line 20
    fill-array-data v0, :array_11

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_0

    :pswitch_13
    new-array v0, v3, [I

    .line 21
    fill-array-data v0, :array_12

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_0

    :pswitch_14
    new-array v0, v3, [I

    .line 22
    fill-array-data v0, :array_13

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_0

    :pswitch_15
    new-array v0, v3, [I

    .line 23
    fill-array-data v0, :array_14

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_0

    :pswitch_16
    new-array v0, v3, [I

    .line 24
    fill-array-data v0, :array_15

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_0

    :pswitch_17
    new-array v0, v3, [I

    .line 25
    fill-array-data v0, :array_16

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_0

    :pswitch_18
    new-array v0, v3, [I

    .line 26
    fill-array-data v0, :array_17

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_0

    :pswitch_19
    new-array v0, v3, [I

    .line 27
    fill-array-data v0, :array_18

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_0

    :pswitch_1a
    new-array v0, v3, [I

    .line 28
    fill-array-data v0, :array_19

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_0

    :pswitch_1b
    new-array v0, v3, [I

    .line 29
    fill-array-data v0, :array_1a

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_0

    :pswitch_1c
    new-array v0, v3, [I

    .line 30
    fill-array-data v0, :array_1b

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_0

    :pswitch_1d
    new-array v0, v3, [I

    .line 31
    fill-array-data v0, :array_1c

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_0

    :pswitch_1e
    new-array v0, v3, [I

    .line 32
    fill-array-data v0, :array_1d

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_0

    :pswitch_1f
    new-array v0, v3, [I

    .line 33
    fill-array-data v0, :array_1e

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_0

    :pswitch_20
    new-array v0, v3, [I

    .line 34
    fill-array-data v0, :array_1f

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_0

    :pswitch_21
    new-array v0, v3, [I

    .line 35
    fill-array-data v0, :array_20

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_0

    :pswitch_22
    new-array v0, v3, [I

    .line 36
    fill-array-data v0, :array_21

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_0

    :pswitch_23
    new-array v0, v3, [I

    .line 37
    fill-array-data v0, :array_22

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_0

    :pswitch_24
    new-array v0, v3, [I

    .line 38
    fill-array-data v0, :array_23

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_0

    :pswitch_25
    new-array v0, v3, [I

    .line 39
    fill-array-data v0, :array_24

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_0

    :pswitch_26
    new-array v0, v3, [I

    .line 40
    fill-array-data v0, :array_25

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_0

    :pswitch_27
    new-array v0, v3, [I

    .line 41
    fill-array-data v0, :array_26

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_0

    :pswitch_28
    new-array v0, v3, [I

    .line 42
    fill-array-data v0, :array_27

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_0

    :pswitch_29
    new-array v0, v3, [I

    .line 43
    fill-array-data v0, :array_28

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_0

    :pswitch_2a
    new-array v0, v3, [I

    .line 44
    fill-array-data v0, :array_29

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_0

    :pswitch_2b
    new-array v0, v3, [I

    .line 45
    fill-array-data v0, :array_2a

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_0

    :pswitch_2c
    new-array v0, v3, [I

    .line 46
    fill-array-data v0, :array_2b

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_0

    :pswitch_2d
    new-array v0, v3, [I

    .line 47
    fill-array-data v0, :array_2c

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_0

    :pswitch_2e
    new-array v0, v3, [I

    .line 48
    fill-array-data v0, :array_2d

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_0

    :pswitch_2f
    new-array v0, v3, [I

    .line 49
    fill-array-data v0, :array_2e

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_0

    :pswitch_30
    new-array v0, v3, [I

    .line 50
    fill-array-data v0, :array_2f

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_0

    :pswitch_31
    new-array v0, v3, [I

    .line 51
    fill-array-data v0, :array_30

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_0

    :pswitch_32
    new-array v0, v3, [I

    .line 52
    fill-array-data v0, :array_31

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_0

    :pswitch_33
    new-array v0, v3, [I

    .line 53
    fill-array-data v0, :array_32

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_0

    :pswitch_34
    new-array v0, v3, [I

    .line 54
    fill-array-data v0, :array_33

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_0

    :pswitch_35
    new-array v0, v3, [I

    .line 55
    fill-array-data v0, :array_34

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_0

    :pswitch_36
    new-array v0, v3, [I

    .line 56
    fill-array-data v0, :array_35

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_0

    :pswitch_37
    new-array v0, v3, [I

    .line 57
    fill-array-data v0, :array_36

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_0

    :pswitch_38
    new-array v0, v3, [I

    .line 58
    fill-array-data v0, :array_37

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_0

    :pswitch_39
    new-array v0, v3, [I

    .line 59
    fill-array-data v0, :array_38

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_0

    :pswitch_3a
    new-array v0, v3, [I

    .line 60
    fill-array-data v0, :array_39

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_0

    :pswitch_3b
    new-array v0, v3, [I

    .line 61
    fill-array-data v0, :array_3a

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_0

    :pswitch_3c
    new-array v0, v3, [I

    .line 62
    fill-array-data v0, :array_3b

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_0

    :pswitch_3d
    new-array v0, v3, [I

    .line 63
    fill-array-data v0, :array_3c

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_0

    :pswitch_3e
    new-array v0, v3, [I

    .line 64
    fill-array-data v0, :array_3d

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_0

    :pswitch_3f
    new-array v0, v3, [I

    .line 65
    fill-array-data v0, :array_3e

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_0

    :pswitch_40
    new-array v0, v3, [I

    .line 66
    fill-array-data v0, :array_3f

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_0

    :pswitch_41
    new-array v0, v3, [I

    .line 67
    fill-array-data v0, :array_40

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_0

    :pswitch_42
    new-array v0, v3, [I

    .line 68
    fill-array-data v0, :array_41

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_0

    :pswitch_43
    new-array v0, v3, [I

    .line 69
    fill-array-data v0, :array_42

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_0

    :pswitch_44
    new-array v0, v3, [I

    .line 70
    fill-array-data v0, :array_43

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_0

    :pswitch_45
    new-array v0, v3, [I

    .line 71
    fill-array-data v0, :array_44

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_0

    :pswitch_46
    new-array v0, v3, [I

    .line 72
    fill-array-data v0, :array_45

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_0

    :pswitch_47
    new-array v0, v3, [I

    .line 73
    fill-array-data v0, :array_46

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_0

    :pswitch_48
    new-array v0, v3, [I

    .line 74
    fill-array-data v0, :array_47

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_0

    :pswitch_49
    new-array v0, v3, [I

    .line 75
    fill-array-data v0, :array_48

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_0

    :pswitch_4a
    new-array v0, v3, [I

    .line 76
    fill-array-data v0, :array_49

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_0

    :pswitch_4b
    new-array v0, v3, [I

    .line 77
    fill-array-data v0, :array_4a

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_0

    :pswitch_4c
    new-array v0, v3, [I

    .line 78
    fill-array-data v0, :array_4b

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_0

    :pswitch_4d
    new-array v0, v3, [I

    .line 79
    fill-array-data v0, :array_4c

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_0

    .line 80
    :pswitch_4e
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-eq v0, v2, :cond_0

    new-array v0, v3, [I

    .line 81
    fill-array-data v0, :array_4d

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_0

    :cond_0
    new-array v0, v3, [I

    .line 82
    fill-array-data v0, :array_4e

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_0

    .line 83
    :pswitch_4f
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-eq v0, v2, :cond_1

    new-array v0, v3, [I

    .line 84
    fill-array-data v0, :array_4f

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_0

    :cond_1
    new-array v0, v3, [I

    .line 85
    fill-array-data v0, :array_50

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_0

    .line 86
    :pswitch_50
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-eq v0, v2, :cond_2

    new-array v0, v3, [I

    .line 87
    fill-array-data v0, :array_51

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_0

    :cond_2
    new-array v0, v3, [I

    .line 88
    fill-array-data v0, :array_52

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_0

    :pswitch_51
    new-array v0, v3, [I

    .line 89
    fill-array-data v0, :array_53

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_0

    .line 90
    :pswitch_52
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-eq v0, v2, :cond_3

    new-array v0, v3, [I

    .line 91
    fill-array-data v0, :array_54

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_0

    :cond_3
    new-array v0, v3, [I

    .line 92
    fill-array-data v0, :array_55

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_0

    :pswitch_53
    new-array v0, v3, [I

    .line 93
    fill-array-data v0, :array_56

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_0

    :pswitch_54
    new-array v0, v3, [I

    .line 94
    fill-array-data v0, :array_57

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_0

    :pswitch_55
    new-array v0, v3, [I

    .line 95
    fill-array-data v0, :array_58

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_0

    :pswitch_56
    new-array v0, v3, [I

    .line 96
    fill-array-data v0, :array_59

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_0

    .line 97
    :pswitch_57
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-eq v0, v2, :cond_4

    new-array v0, v3, [I

    .line 98
    fill-array-data v0, :array_5a

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_0

    :cond_4
    new-array v0, v3, [I

    .line 99
    fill-array-data v0, :array_5b

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_0

    .line 100
    :pswitch_58
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-eq v0, v2, :cond_5

    new-array v0, v3, [I

    .line 101
    fill-array-data v0, :array_5c

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_0

    :cond_5
    new-array v0, v3, [I

    .line 102
    fill-array-data v0, :array_5d

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_0

    .line 103
    :pswitch_59
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-eq v0, v2, :cond_6

    new-array v0, v3, [I

    .line 104
    fill-array-data v0, :array_5e

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_0

    :cond_6
    new-array v0, v3, [I

    .line 105
    fill-array-data v0, :array_5f

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_0

    :pswitch_5a
    new-array v0, v3, [I

    .line 106
    fill-array-data v0, :array_60

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_0

    :pswitch_5b
    new-array v0, v3, [I

    .line 107
    fill-array-data v0, :array_61

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_0

    :pswitch_5c
    new-array v0, v3, [I

    .line 108
    fill-array-data v0, :array_62

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_0

    :pswitch_5d
    new-array v0, v3, [I

    .line 109
    fill-array-data v0, :array_63

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_0

    .line 110
    :pswitch_5e
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-eq v0, v2, :cond_7

    new-array v0, v3, [I

    .line 111
    fill-array-data v0, :array_64

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_0

    :cond_7
    new-array v0, v3, [I

    .line 112
    fill-array-data v0, :array_65

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_0

    .line 113
    :pswitch_5f
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-eq v0, v2, :cond_8

    new-array v0, v3, [I

    .line 114
    fill-array-data v0, :array_66

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_0

    :cond_8
    new-array v0, v3, [I

    .line 115
    fill-array-data v0, :array_67

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_0

    :pswitch_60
    new-array v0, v3, [I

    .line 116
    fill-array-data v0, :array_68

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_0

    .line 117
    :pswitch_61
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-eq v0, v2, :cond_9

    new-array v0, v3, [I

    .line 118
    fill-array-data v0, :array_69

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    :cond_9
    new-array v0, v3, [I

    .line 119
    fill-array-data v0, :array_6a

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    .line 120
    :pswitch_62
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-eq v0, v2, :cond_a

    new-array v0, v3, [I

    .line 121
    fill-array-data v0, :array_6b

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    :cond_a
    new-array v0, v3, [I

    .line 122
    fill-array-data v0, :array_6c

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    :pswitch_63
    new-array v0, v3, [I

    .line 123
    fill-array-data v0, :array_6d

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    :pswitch_64
    new-array v0, v3, [I

    .line 124
    fill-array-data v0, :array_6e

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    :pswitch_65
    new-array v0, v3, [I

    .line 125
    fill-array-data v0, :array_6f

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    :pswitch_66
    new-array v0, v3, [I

    .line 126
    fill-array-data v0, :array_70

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    .line 127
    :cond_b
    iget-object v0, v0, Lmodule/canbus/r;->I:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->p0(Ljava/lang/Runnable;)V

    .line 128
    iget-object v0, p0, Lmodule/canbus/r$i;->a:Lmodule/canbus/r;

    iput v3, v0, Lmodule/canbus/r;->F:I

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_66
        :pswitch_0
        :pswitch_65
        :pswitch_0
        :pswitch_64
        :pswitch_0
        :pswitch_63
        :pswitch_63
        :pswitch_62
        :pswitch_61
        :pswitch_60
        :pswitch_60
        :pswitch_60
        :pswitch_5f
        :pswitch_5e
        :pswitch_5d
        :pswitch_5c
        :pswitch_5b
        :pswitch_5a
        :pswitch_59
        :pswitch_58
        :pswitch_57
        :pswitch_56
        :pswitch_55
        :pswitch_54
        :pswitch_53
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_52
        :pswitch_51
        :pswitch_50
        :pswitch_4f
        :pswitch_4e
        :pswitch_4d
        :pswitch_4c
        :pswitch_4c
        :pswitch_4b
        :pswitch_4b
        :pswitch_4a
        :pswitch_4a
        :pswitch_49
        :pswitch_49
        :pswitch_48
        :pswitch_47
        :pswitch_46
        :pswitch_46
        :pswitch_45
        :pswitch_45
        :pswitch_44
        :pswitch_44
        :pswitch_43
        :pswitch_43
        :pswitch_42
        :pswitch_42
        :pswitch_41
        :pswitch_41
        :pswitch_40
        :pswitch_40
        :pswitch_3f
        :pswitch_3f
        :pswitch_3e
        :pswitch_3e
        :pswitch_3d
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_3a
        :pswitch_39
        :pswitch_39
        :pswitch_53
        :pswitch_38
        :pswitch_38
        :pswitch_38
        :pswitch_38
        :pswitch_37
        :pswitch_37
        :pswitch_36
        :pswitch_36
        :pswitch_35
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_31
        :pswitch_42
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_37
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_4a
        :pswitch_4a
        :pswitch_10
        :pswitch_22
        :pswitch_0
        :pswitch_f
        :pswitch_e
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_10
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch

    :array_0
    .array-data 4
        0xe3
        0x2
        0x24
        0x56
        0x1
    .end array-data

    :array_1
    .array-data 4
        0xe3
        0x2
        0x24
        0xc6
        0x1
    .end array-data

    :array_2
    .array-data 4
        0xe3
        0x2
        0x24
        0xca
        0x1
    .end array-data

    :array_3
    .array-data 4
        0xe3
        0x2
        0x24
        0xc9
        0x1
    .end array-data

    :array_4
    .array-data 4
        0xe3
        0x2
        0x24
        0xc8
        0x1
    .end array-data

    :array_5
    .array-data 4
        0xe3
        0x2
        0x24
        0xc8
        0x1
    .end array-data

    :array_6
    .array-data 4
        0xe3
        0x2
        0x24
        0xc7
        0x1
    .end array-data

    :array_7
    .array-data 4
        0xe3
        0x2
        0x24
        0xc3
        0x1
    .end array-data

    :array_8
    .array-data 4
        0xe3
        0x2
        0x24
        0xc4
        0x1
    .end array-data

    :array_9
    .array-data 4
        0xe3
        0x2
        0x24
        0x2b
        0x1
    .end array-data

    :array_a
    .array-data 4
        0xe3
        0x2
        0x24
        0x2a
        0x1
    .end array-data

    :array_b
    .array-data 4
        0xe3
        0x2
        0x24
        0xbd
        0x1
    .end array-data

    :array_c
    .array-data 4
        0xe3
        0x2
        0x24
        0x4f
        0x1
    .end array-data

    :array_d
    .array-data 4
        0xe3
        0x2
        0x24
        0xbc
        0x1
    .end array-data

    :array_e
    .array-data 4
        0xe3
        0x2
        0x24
        0xba
        0x1
    .end array-data

    :array_f
    .array-data 1
        0x5at
        -0x5bt
        0x2t
        0x24t
        0x25t
        0x1t
        0x0t
    .end array-data

    :array_10
    .array-data 4
        0xe3
        0x2
        0x24
        0x69
        0x1
    .end array-data

    :array_11
    .array-data 4
        0xe3
        0x2
        0x24
        0x68
        0x1
    .end array-data

    :array_12
    .array-data 4
        0xe3
        0x2
        0x24
        0x6c
        0x1
    .end array-data

    :array_13
    .array-data 4
        0xe3
        0x2
        0x24
        0x64
        0x1
    .end array-data

    :array_14
    .array-data 4
        0xe3
        0x2
        0x24
        0x60
        0x1
    .end array-data

    :array_15
    .array-data 4
        0xe3
        0x2
        0x24
        0x5c
        0x1
    .end array-data

    :array_16
    .array-data 4
        0xe3
        0x2
        0x24
        0x55
        0x1
    .end array-data

    :array_17
    .array-data 4
        0xe3
        0x2
        0x24
        0x50
        0x1
    .end array-data

    :array_18
    .array-data 4
        0xe3
        0x2
        0x24
        0x4d
        0x1
    .end array-data

    :array_19
    .array-data 4
        0xe3
        0x2
        0x24
        0x4c
        0x1
    .end array-data

    :array_1a
    .array-data 4
        0xe3
        0x2
        0x24
        0x48
        0x1
    .end array-data

    :array_1b
    .array-data 4
        0xe3
        0x2
        0x24
        0xb9
        0x1
    .end array-data

    :array_1c
    .array-data 4
        0xe3
        0x2
        0x24
        0x45
        0x1
    .end array-data

    :array_1d
    .array-data 4
        0xe3
        0x2
        0x24
        0x44
        0x1
    .end array-data

    :array_1e
    .array-data 4
        0xe3
        0x2
        0x24
        0x42
        0x1
    .end array-data

    :array_1f
    .array-data 4
        0xe3
        0x2
        0x24
        0x41
        0x1
    .end array-data

    :array_20
    .array-data 4
        0xe3
        0x2
        0x24
        0x40
        0x1
    .end array-data

    :array_21
    .array-data 4
        0xe3
        0x2
        0x24
        0x3e
        0x1
    .end array-data

    :array_22
    .array-data 4
        0xe3
        0x2
        0x24
        0x2c
        0x1
    .end array-data

    :array_23
    .array-data 4
        0xe3
        0x2
        0x24
        0x29
        0x1
    .end array-data

    :array_24
    .array-data 4
        0xe3
        0x2
        0x24
        0x28
        0x1
    .end array-data

    :array_25
    .array-data 4
        0xe3
        0x2
        0x24
        0x1d
        0x1
    .end array-data

    :array_26
    .array-data 4
        0xe3
        0x2
        0x24
        0x1c
        0x1
    .end array-data

    :array_27
    .array-data 4
        0xe3
        0x2
        0x24
        0x14
        0x1
    .end array-data

    :array_28
    .array-data 4
        0xe3
        0x2
        0x24
        0xb8
        0x1
    .end array-data

    :array_29
    .array-data 4
        0xe3
        0x2
        0x24
        0xb7
        0x1
    .end array-data

    :array_2a
    .array-data 4
        0xe3
        0x2
        0x24
        0xb6
        0x1
    .end array-data

    :array_2b
    .array-data 4
        0xe3
        0x2
        0x24
        0xb5
        0x1
    .end array-data

    :array_2c
    .array-data 4
        0xe3
        0x2
        0x24
        0xb4
        0x1
    .end array-data

    :array_2d
    .array-data 4
        0xe3
        0x2
        0x24
        0xb3
        0x1
    .end array-data

    :array_2e
    .array-data 4
        0xe3
        0x2
        0x24
        0xb2
        0x1
    .end array-data

    :array_2f
    .array-data 4
        0xe3
        0x2
        0x24
        0xb1
        0x1
    .end array-data

    :array_30
    .array-data 4
        0xe3
        0x2
        0x24
        0xb0
        0x1
    .end array-data

    :array_31
    .array-data 4
        0xe3
        0x2
        0x24
        0xaf
        0x1
    .end array-data

    :array_32
    .array-data 4
        0xe3
        0x2
        0x24
        0xa4
        0x1
    .end array-data

    :array_33
    .array-data 4
        0xe3
        0x2
        0x24
        0xa3
        0x1
    .end array-data

    :array_34
    .array-data 4
        0xe3
        0x2
        0x24
        0x97
        0x1
    .end array-data

    :array_35
    .array-data 4
        0xe3
        0x2
        0x24
        0x96
        0x1
    .end array-data

    :array_36
    .array-data 4
        0xe3
        0x2
        0x24
        0x95
        0x1
    .end array-data

    :array_37
    .array-data 4
        0xe3
        0x2
        0x24
        0x93
        0x1
    .end array-data

    :array_38
    .array-data 4
        0xe3
        0x2
        0x24
        0x91
        0x1
    .end array-data

    :array_39
    .array-data 4
        0xe3
        0x2
        0x24
        0x10
        0x1
    .end array-data

    :array_3a
    .array-data 4
        0xe3
        0x2
        0x24
        0xaa
        0x1
    .end array-data

    :array_3b
    .array-data 4
        0xe3
        0x2
        0x24
        0xa9
        0x1
    .end array-data

    :array_3c
    .array-data 4
        0xe3
        0x2
        0x24
        0xae
        0x1
    .end array-data

    :array_3d
    .array-data 4
        0xe3
        0x2
        0x24
        0xad
        0x1
    .end array-data

    :array_3e
    .array-data 4
        0xe3
        0x2
        0x24
        0xac
        0x1
    .end array-data

    :array_3f
    .array-data 4
        0xe3
        0x2
        0x24
        0xab
        0x1
    .end array-data

    :array_40
    .array-data 4
        0xe3
        0x2
        0x24
        0x9e
        0x1
    .end array-data

    :array_41
    .array-data 4
        0xe3
        0x2
        0x24
        0x9d
        0x1
    .end array-data

    :array_42
    .array-data 4
        0xe3
        0x2
        0x24
        0xa8
        0x1
    .end array-data

    :array_43
    .array-data 4
        0xe3
        0x2
        0x24
        0xa7
        0x1
    .end array-data

    :array_44
    .array-data 4
        0xe3
        0x2
        0x24
        0xa6
        0x1
    .end array-data

    :array_45
    .array-data 4
        0xe3
        0x2
        0x24
        0xa5
        0x1
    .end array-data

    :array_46
    .array-data 4
        0xe3
        0x2
        0x24
        0x9c
        0x1
    .end array-data

    :array_47
    .array-data 4
        0xe3
        0x2
        0x24
        0x9b
        0x1
    .end array-data

    :array_48
    .array-data 4
        0xe3
        0x2
        0x24
        0xa2
        0x1
    .end array-data

    :array_49
    .array-data 4
        0xe3
        0x2
        0x24
        0xa1
        0x1
    .end array-data

    :array_4a
    .array-data 4
        0xe3
        0x2
        0x24
        0xa0
        0x1
    .end array-data

    :array_4b
    .array-data 4
        0xe3
        0x2
        0x24
        0x9f
        0x1
    .end array-data

    :array_4c
    .array-data 4
        0xe3
        0x2
        0x24
        0x21
        0x1
    .end array-data

    :array_4d
    .array-data 4
        0xe3
        0x2
        0x24
        0x3d
        0x1
    .end array-data

    :array_4e
    .array-data 4
        0xe3
        0x2
        0x24
        0x83
        0x1
    .end array-data

    :array_4f
    .array-data 4
        0xe3
        0x2
        0x24
        0x3d
        0x1
    .end array-data

    :array_50
    .array-data 4
        0xe3
        0x2
        0x24
        0x84
        0x1
    .end array-data

    :array_51
    .array-data 4
        0xe3
        0x2
        0x24
        0x3f
        0x1
    .end array-data

    :array_52
    .array-data 4
        0xe3
        0x2
        0x24
        0x83
        0x1
    .end array-data

    :array_53
    .array-data 4
        0xe3
        0x2
        0x24
        0x98
        0x1
    .end array-data

    :array_54
    .array-data 4
        0xe3
        0x2
        0x24
        0x3f
        0x1
    .end array-data

    :array_55
    .array-data 4
        0xe3
        0x2
        0x24
        0x84
        0x1
    .end array-data

    :array_56
    .array-data 4
        0xe3
        0x2
        0x24
        0x92
        0x1
    .end array-data

    :array_57
    .array-data 4
        0xe3
        0x2
        0x24
        0x99
        0x1
    .end array-data

    :array_58
    .array-data 4
        0xe3
        0x2
        0x24
        0x9a
        0x1
    .end array-data

    :array_59
    .array-data 4
        0xe3
        0x2
        0x24
        0x8e
        0x1
    .end array-data

    :array_5a
    .array-data 4
        0xe3
        0x2
        0x24
        0x3c
        0x1
    .end array-data

    :array_5b
    .array-data 4
        0xe3
        0x2
        0x24
        0x8d
        0x1
    .end array-data

    :array_5c
    .array-data 4
        0xe3
        0x2
        0x24
        0x58
        0x1
    .end array-data

    :array_5d
    .array-data 4
        0xe3
        0x2
        0x24
        0x8f
        0x1
    .end array-data

    :array_5e
    .array-data 4
        0xe3
        0x2
        0x24
        0x24
        0x1
    .end array-data

    :array_5f
    .array-data 4
        0xe3
        0x2
        0x24
        0x8c
        0x1
    .end array-data

    :array_60
    .array-data 4
        0xe3
        0x2
        0x24
        0x8b
        0x1
    .end array-data

    :array_61
    .array-data 4
        0xe3
        0x2
        0x24
        0x8a
        0x1
    .end array-data

    :array_62
    .array-data 4
        0xe3
        0x2
        0x24
        0x89
        0x1
    .end array-data

    :array_63
    .array-data 4
        0xe3
        0x2
        0x24
        0x88
        0x1
    .end array-data

    :array_64
    .array-data 4
        0xe3
        0x2
        0x24
        0x30
        0x1
    .end array-data

    :array_65
    .array-data 4
        0xe3
        0x2
        0x24
        0x87
        0x1
    .end array-data

    :array_66
    .array-data 4
        0xe3
        0x2
        0x24
        0x54
        0x1
    .end array-data

    :array_67
    .array-data 4
        0xe3
        0x2
        0x24
        0x86
        0x1
    .end array-data

    :array_68
    .array-data 4
        0xe3
        0x2
        0x24
        0x85
        0x1
    .end array-data

    :array_69
    .array-data 4
        0xe3
        0x2
        0x24
        0x19
        0x1
    .end array-data

    :array_6a
    .array-data 4
        0xe3
        0x2
        0x24
        0x82
        0x1
    .end array-data

    :array_6b
    .array-data 4
        0xe3
        0x2
        0x24
        0x18
        0x1
    .end array-data

    :array_6c
    .array-data 4
        0xe3
        0x2
        0x24
        0x81
        0x1
    .end array-data

    :array_6d
    .array-data 4
        0xe3
        0x2
        0x24
        0x20
        0x1
    .end array-data

    :array_6e
    .array-data 4
        0xe3
        0x2
        0x24
        0x94
        0x1
    .end array-data

    :array_6f
    .array-data 4
        0xe3
        0x2
        0x24
        0x81
        0x1
    .end array-data

    :array_70
    .array-data 4
        0xe3
        0x2
        0x24
        0x82
        0x1
    .end array-data
.end method
