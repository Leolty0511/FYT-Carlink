.class public La/g;
.super Ly/d$a;
.source "SourceFile"


# static fields
.field public static a:La/g;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ly/d$a;-><init>()V

    return-void
.end method

.method public static K2()La/g;
    .locals 1

    .line 1
    sget-object v0, La/g;->a:La/g;

    if-nez v0, :cond_0

    new-instance v0, La/g;

    invoke-direct {v0}, La/g;-><init>()V

    sput-object v0, La/g;->a:La/g;

    .line 2
    :cond_0
    sget-object v0, La/g;->a:La/g;

    return-object v0
.end method


# virtual methods
.method public L2(I)Ly/c$a;
    .locals 0

    packed-switch p1, :pswitch_data_0

    const/4 p1, 0x0

    return-object p1

    .line 1
    :pswitch_0
    invoke-static {}, Le0/a;->X2()Le0/a;

    move-result-object p1

    return-object p1

    .line 2
    :pswitch_1
    invoke-static {}, Lx0/c;->X2()Lx0/c;

    move-result-object p1

    return-object p1

    .line 3
    :pswitch_2
    invoke-static {}, Lr0/a;->X2()Lr0/a;

    move-result-object p1

    return-object p1

    .line 4
    :pswitch_3
    invoke-static {}, Ls0/f;->K2()Ls0/f;

    move-result-object p1

    return-object p1

    .line 5
    :pswitch_4
    invoke-static {}, Lq0/e;->K2()Lq0/e;

    move-result-object p1

    return-object p1

    .line 6
    :pswitch_5
    invoke-static {}, Lf0/c;->X2()Lf0/c;

    move-result-object p1

    return-object p1

    .line 7
    :pswitch_6
    invoke-static {}, Lm0/e;->Z2()Lm0/e;

    move-result-object p1

    return-object p1

    .line 8
    :pswitch_7
    invoke-static {}, Lb1/a;->K2()Lb1/a;

    move-result-object p1

    return-object p1

    .line 9
    :pswitch_8
    invoke-static {}, Lv0/h;->M2()Lv0/h;

    move-result-object p1

    return-object p1

    .line 10
    :pswitch_9
    invoke-static {}, Ln0/l4;->L2()Ln0/l4;

    move-result-object p1

    return-object p1

    .line 11
    :pswitch_a
    invoke-static {}, La1/e;->X2()La1/e;

    move-result-object p1

    return-object p1

    .line 12
    :pswitch_b
    invoke-static {}, Lp0/e;->K2()Lp0/e;

    move-result-object p1

    return-object p1

    .line 13
    :pswitch_c
    invoke-static {}, Lc1/c;->O2()Lc1/c;

    move-result-object p1

    return-object p1

    .line 14
    :pswitch_d
    invoke-static {}, Lk0/rt;->a3()Lk0/rt;

    move-result-object p1

    return-object p1

    .line 15
    :pswitch_e
    invoke-static {}, Ld1/h;->X2()Ld1/h;

    move-result-object p1

    return-object p1

    .line 16
    :pswitch_f
    invoke-static {}, Lt0/a;->X2()Lt0/a;

    move-result-object p1

    return-object p1

    .line 17
    :pswitch_10
    invoke-static {}, Ly0/j;->a3()Ly0/j;

    move-result-object p1

    return-object p1

    .line 18
    :pswitch_11
    invoke-static {}, Lo0/i;->X2()Lo0/i;

    move-result-object p1

    return-object p1

    .line 19
    :pswitch_12
    invoke-static {}, Lh0/g;->Y2()Lh0/g;

    move-result-object p1

    return-object p1

    .line 20
    :pswitch_13
    invoke-static {}, Lw0/i;->X2()Lw0/i;

    move-result-object p1

    return-object p1

    .line 21
    :pswitch_14
    invoke-static {}, Lu0/i;->l3()Lu0/i;

    move-result-object p1

    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
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
        :pswitch_0
    .end packed-switch
.end method

.method public bridge synthetic p2(I)Ly/c;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, La/g;->L2(I)Ly/c$a;

    move-result-object p1

    return-object p1
.end method
