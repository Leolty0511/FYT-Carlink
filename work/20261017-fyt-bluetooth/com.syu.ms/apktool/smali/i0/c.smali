.class public Li0/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Li0/c$a;
    }
.end annotation


# static fields
.field public static final B:Ljava/util/regex/Pattern;


# instance fields
.field public A:I

.field public a:I

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:I

.field public g:I

.field public h:Ljava/lang/String;

.field public i:Ljava/lang/String;

.field public j:Ljava/lang/String;

.field public k:Ljava/lang/String;

.field public l:Ljava/lang/String;

.field public m:Ljava/lang/String;

.field public n:I

.field public o:I

.field public p:I

.field public q:I

.field public r:Ljava/lang/String;

.field public final s:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Li0/c$a;",
            ">;"
        }
    .end annotation
.end field

.field public t:Z

.field public u:Z

.field public v:Z

.field public w:Z

.field public x:Z

.field public y:Lj0/a;

.field public z:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "^\\+?\\d{3,15}$"

    .line 1
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Li0/c;->B:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Li0/c;->a:I

    const-string v1, ""

    .line 3
    iput-object v1, p0, Li0/c;->b:Ljava/lang/String;

    const-string v2, "000000000000"

    .line 4
    iput-object v2, p0, Li0/c;->c:Ljava/lang/String;

    .line 5
    iput-object v1, p0, Li0/c;->d:Ljava/lang/String;

    .line 6
    iput-object v1, p0, Li0/c;->m:Ljava/lang/String;

    .line 7
    iput-object v1, p0, Li0/c;->r:Ljava/lang/String;

    .line 8
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v1, p0, Li0/c;->s:Ljava/util/LinkedHashMap;

    .line 9
    iput-boolean v0, p0, Li0/c;->t:Z

    .line 10
    iput-boolean v0, p0, Li0/c;->u:Z

    .line 11
    iput-boolean v0, p0, Li0/c;->v:Z

    .line 12
    iput-boolean v0, p0, Li0/c;->w:Z

    .line 13
    iput-boolean v0, p0, Li0/c;->x:Z

    const/4 v0, 0x1

    .line 14
    iput v0, p0, Li0/c;->z:I

    .line 15
    iput v0, p0, Li0/c;->A:I

    .line 16
    iput-object p1, p0, Li0/c;->c:Ljava/lang/String;

    return-void
.end method

.method public static T(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 p0, 0x1

    const-string v1, "000000000000"

    aput-object v1, v0, p0

    const/4 p0, 0x6

    const/4 v1, 0x0

    .line 1
    invoke-static {p0, v1, v1, v0}, Lh0/e;->X(I[I[F[Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public A(I[I[F[Ljava/lang/String;)Z
    .locals 3

    const/4 p3, 0x1

    const/4 v0, 0x0

    if-eqz p1, :cond_b

    if-eq p1, p3, :cond_a

    const/4 v1, 0x2

    if-eq p1, v1, :cond_9

    const/4 v2, 0x3

    if-eq p1, v2, :cond_8

    const/4 v2, 0x4

    if-eq p1, v2, :cond_7

    const/16 v2, 0x1a

    if-eq p1, v2, :cond_6

    const/16 v2, 0x1b

    if-eq p1, v2, :cond_5

    const/16 v2, 0x31

    if-eq p1, v2, :cond_4

    const/16 v2, 0x38

    if-eq p1, v2, :cond_3

    const/16 v2, 0x34

    if-eq p1, v2, :cond_c

    const/16 v2, 0x35

    if-eq p1, v2, :cond_c

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    packed-switch p1, :pswitch_data_2

    move p3, v0

    goto/16 :goto_0

    .line 1
    :pswitch_0
    invoke-virtual {p0}, Li0/c;->t()V

    goto/16 :goto_0

    .line 2
    :pswitch_1
    invoke-static {p4, v0}, Lo1/s0;->i([Ljava/lang/Object;I)Z

    move-result p1

    if-eqz p1, :cond_c

    .line 3
    aget-object p1, p4, v0

    invoke-virtual {p0, p1}, Li0/c;->s(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 4
    :pswitch_2
    invoke-virtual {p0}, Li0/c;->r()V

    goto/16 :goto_0

    .line 5
    :pswitch_3
    invoke-virtual {p0}, Li0/c;->N()V

    goto/16 :goto_0

    .line 6
    :pswitch_4
    invoke-virtual {p0}, Li0/c;->O()V

    goto/16 :goto_0

    .line 7
    :pswitch_5
    invoke-virtual {p0}, Li0/c;->M()V

    goto/16 :goto_0

    .line 8
    :pswitch_6
    invoke-virtual {p0}, Li0/c;->b()V

    goto/16 :goto_0

    .line 9
    :pswitch_7
    invoke-virtual {p0}, Li0/c;->d()V

    goto/16 :goto_0

    .line 10
    :pswitch_8
    invoke-virtual {p0}, Li0/c;->c()V

    goto/16 :goto_0

    .line 11
    :pswitch_9
    invoke-static {p2, v0}, Lo1/s0;->h([II)Z

    move-result p1

    if-eqz p1, :cond_c

    .line 12
    aget p1, p2, v0

    invoke-virtual {p0, p1}, Li0/c;->a(I)V

    goto/16 :goto_0

    .line 13
    :pswitch_a
    invoke-static {p2, v0}, Lo1/s0;->h([II)Z

    move-result p1

    if-eqz p1, :cond_c

    .line 14
    aget p1, p2, v0

    invoke-virtual {p0, p1}, Li0/c;->m(I)V

    goto/16 :goto_0

    .line 15
    :pswitch_b
    invoke-static {p2, v0}, Lo1/s0;->h([II)Z

    move-result p1

    if-eqz p1, :cond_c

    .line 16
    aget p1, p2, v0

    if-eqz p1, :cond_2

    if-eq p1, p3, :cond_1

    if-eq p1, v1, :cond_0

    goto/16 :goto_0

    .line 17
    :cond_0
    aget p1, p2, v0

    invoke-virtual {p0, p1}, Li0/c;->C(I)V

    goto/16 :goto_0

    .line 18
    :cond_1
    iget-boolean p1, p0, Li0/c;->v:Z

    if-nez p1, :cond_c

    .line 19
    aget p1, p2, v0

    invoke-virtual {p0, p1}, Li0/c;->C(I)V

    goto/16 :goto_0

    .line 20
    :cond_2
    iget-boolean p1, p0, Li0/c;->v:Z

    if-eqz p1, :cond_c

    .line 21
    aget p1, p2, v0

    invoke-virtual {p0, p1}, Li0/c;->C(I)V

    goto/16 :goto_0

    .line 22
    :pswitch_c
    invoke-static {p2, v0}, Lo1/s0;->h([II)Z

    move-result p1

    if-eqz p1, :cond_c

    .line 23
    aget p1, p2, v0

    invoke-virtual {p0, p1}, Li0/c;->J(I)V

    goto/16 :goto_0

    .line 24
    :pswitch_d
    invoke-static {p4, v0}, Lo1/s0;->i([Ljava/lang/Object;I)Z

    move-result p1

    if-eqz p1, :cond_c

    .line 25
    aget-object p1, p4, v0

    invoke-virtual {p0, p1}, Li0/c;->c0(Ljava/lang/String;)V

    goto :goto_0

    .line 26
    :pswitch_e
    invoke-virtual {p0}, Li0/c;->R()V

    goto :goto_0

    .line 27
    :pswitch_f
    invoke-virtual {p0}, Li0/c;->B()V

    goto :goto_0

    .line 28
    :pswitch_10
    invoke-virtual {p0}, Li0/c;->L()V

    goto :goto_0

    .line 29
    :pswitch_11
    invoke-virtual {p0}, Li0/c;->P()V

    goto :goto_0

    .line 30
    :pswitch_12
    invoke-static {p4, v0}, Lo1/s0;->i([Ljava/lang/Object;I)Z

    move-result p1

    if-eqz p1, :cond_c

    .line 31
    aget-object p1, p4, v0

    invoke-virtual {p0, p1}, Li0/c;->u(Ljava/lang/String;)V

    goto :goto_0

    .line 32
    :pswitch_13
    invoke-static {p2, v0}, Lo1/s0;->h([II)Z

    move-result p1

    if-eqz p1, :cond_c

    .line 33
    aget p1, p2, v0

    invoke-virtual {p0, p1}, Li0/c;->H(I)V

    goto :goto_0

    .line 34
    :cond_3
    invoke-virtual {p0}, Li0/c;->y0()V

    goto :goto_0

    .line 35
    :cond_4
    invoke-static {p4, v0}, Lo1/s0;->i([Ljava/lang/Object;I)Z

    move-result p1

    if-eqz p1, :cond_c

    .line 36
    aget-object p1, p4, v0

    invoke-virtual {p0, p1}, Li0/c;->U(Ljava/lang/String;)V

    goto :goto_0

    .line 37
    :cond_5
    invoke-virtual {p0}, Li0/c;->g()V

    goto :goto_0

    .line 38
    :cond_6
    invoke-virtual {p0}, Li0/c;->v()V

    goto :goto_0

    .line 39
    :cond_7
    invoke-virtual {p0}, Li0/c;->j()V

    goto :goto_0

    .line 40
    :cond_8
    invoke-virtual {p0}, Li0/c;->f()V

    goto :goto_0

    .line 41
    :cond_9
    invoke-virtual {p0}, Li0/c;->h()V

    goto :goto_0

    .line 42
    :cond_a
    invoke-virtual {p0}, Li0/c;->e()V

    goto :goto_0

    .line 43
    :cond_b
    invoke-virtual {p0}, Li0/c;->i()V

    :cond_c
    :goto_0
    return p3

    :pswitch_data_0
    .packed-switch 0x6
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
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1f
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x27
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public A0(I[I[Ljava/lang/String;)V
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p3, :cond_1

    .line 1
    array-length v2, p3

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    move v2, v1

    goto :goto_1

    :cond_1
    :goto_0
    move v2, v0

    :goto_1
    if-eqz v2, :cond_2

    move v3, v1

    goto :goto_2

    .line 2
    :cond_2
    array-length v3, p3

    :goto_2
    add-int/2addr v3, v0

    .line 3
    new-array v3, v3, [Ljava/lang/String;

    .line 4
    iget-object v4, p0, Li0/c;->b:Ljava/lang/String;

    aput-object v4, v3, v1

    if-nez v2, :cond_3

    .line 5
    array-length v2, p3

    invoke-static {p3, v1, v3, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 6
    :cond_3
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "SlaveDevice update cmd:"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " ints:"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " strs:"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v0, "BT"

    invoke-static {v0, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p3, 0x0

    .line 7
    invoke-static {p1, p2, p3, v3}, Lh0/e;->X(I[I[F[Ljava/lang/String;)V

    return-void
.end method

.method public B()V
    .locals 1

    const-string v0, "CG"

    .line 1
    invoke-virtual {p0, v0}, Li0/c;->V(Ljava/lang/String;)V

    return-void
.end method

.method public varargs B0(I[Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0, p2}, Li0/c;->A0(I[I[Ljava/lang/String;)V

    return-void
.end method

.method public C(I)V
    .locals 0

    const-string p1, "CO"

    .line 1
    invoke-virtual {p0, p1}, Li0/c;->V(Ljava/lang/String;)V

    return-void
.end method

.method public varargs C0(Ly/b;I[I)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, p2, p3, v0}, Li0/c;->D0(Ly/b;I[I[Ljava/lang/String;)V

    return-void
.end method

.method public D()Z
    .locals 2

    .line 1
    iget v0, p0, Li0/c;->z:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    invoke-virtual {p0}, Li0/c;->E()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public D0(Ly/b;I[I[Ljava/lang/String;)V
    .locals 7

    .line 1
    invoke-static {}, Lh0/g;->Y2()Lh0/g;

    move-result-object v0

    invoke-virtual {v0}, Lbase/b;->L2()Lo1/x;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    const/4 v2, 0x0

    if-eqz p4, :cond_2

    .line 2
    array-length v3, p4

    if-nez v3, :cond_1

    goto :goto_0

    :cond_1
    move v3, v2

    goto :goto_1

    :cond_2
    :goto_0
    move v3, v0

    :goto_1
    if-eqz v3, :cond_3

    move v4, v2

    goto :goto_2

    .line 3
    :cond_3
    array-length v4, p4

    :goto_2
    add-int/2addr v4, v0

    .line 4
    new-array v6, v4, [Ljava/lang/String;

    .line 5
    iget-object v4, p0, Li0/c;->b:Ljava/lang/String;

    aput-object v4, v6, v2

    if-nez v3, :cond_4

    .line 6
    array-length v3, p4

    invoke-static {p4, v2, v6, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 7
    :cond_4
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "SlaveDevice update callback cmd:"

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " ints:"

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " strs:"

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    const-string v0, "BT"

    invoke-static {v0, p4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    .line 8
    invoke-virtual/range {v1 .. v6}, Lo1/x;->H(Ly/b;I[I[F[Ljava/lang/String;)V

    return-void
.end method

.method public E()Z
    .locals 2

    .line 1
    iget v0, p0, Li0/c;->z:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public varargs E0(Ly/b;I[Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, p2, v0, p3}, Li0/c;->D0(Ly/b;I[I[Ljava/lang/String;)V

    return-void
.end method

.method public F()Z
    .locals 1

    .line 1
    iget-object v0, p0, Li0/c;->h:Ljava/lang/String;

    invoke-static {v0}, Lo1/s0;->t(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Li0/c;->i:Ljava/lang/String;

    invoke-static {v0}, Lo1/s0;->t(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public F0(I)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Li0/c;->w:Z

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    const-string p1, "CJ"

    .line 2
    invoke-virtual {p0, p1}, Li0/c;->V(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    if-nez v0, :cond_1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    const-string p1, "CI"

    .line 3
    invoke-virtual {p0, p1}, Li0/c;->V(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public G()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Li0/c;->w:Z

    return v0
.end method

.method public H(I)V
    .locals 2

    const/4 v0, 0x5

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    const-string p1, "#"

    .line 1
    invoke-virtual {p0, p1}, Li0/c;->I(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_1
    const-string p1, "*"

    .line 2
    invoke-virtual {p0, p1}, Li0/c;->I(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_2
    const-string p1, "+"

    .line 3
    invoke-virtual {p0, p1}, Li0/c;->I(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_3
    const-string p1, "9"

    .line 4
    invoke-virtual {p0, p1}, Li0/c;->I(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_4
    const-string p1, "8"

    .line 5
    invoke-virtual {p0, p1}, Li0/c;->I(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_5
    const-string p1, "7"

    .line 6
    invoke-virtual {p0, p1}, Li0/c;->I(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_6
    const-string p1, "6"

    .line 7
    invoke-virtual {p0, p1}, Li0/c;->I(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_7
    const-string p1, "5"

    .line 8
    invoke-virtual {p0, p1}, Li0/c;->I(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_8
    const-string p1, "4"

    .line 9
    invoke-virtual {p0, p1}, Li0/c;->I(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_9
    const-string p1, "3"

    .line 10
    invoke-virtual {p0, p1}, Li0/c;->I(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_a
    const-string p1, "2"

    .line 11
    invoke-virtual {p0, p1}, Li0/c;->I(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_b
    const-string p1, "1"

    .line 12
    invoke-virtual {p0, p1}, Li0/c;->I(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_c
    const-string p1, "0"

    .line 13
    invoke-virtual {p0, p1}, Li0/c;->I(Ljava/lang/String;)V

    goto :goto_0

    .line 14
    :pswitch_d
    iget p1, p0, Li0/c;->z:I

    if-ne p1, v0, :cond_0

    .line 15
    invoke-virtual {p0}, Li0/c;->R()V

    goto :goto_0

    .line 16
    :cond_0
    invoke-virtual {p0}, Li0/c;->B()V

    goto :goto_0

    .line 17
    :pswitch_e
    iget p1, p0, Li0/c;->z:I

    const/4 v1, 0x3

    if-ne p1, v1, :cond_2

    .line 18
    iget-object p1, p0, Li0/c;->h:Ljava/lang/String;

    invoke-static {p1}, Lo1/s0;->t(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 19
    invoke-virtual {p0}, Li0/c;->P()V

    goto :goto_0

    .line 20
    :cond_1
    iget-object p1, p0, Li0/c;->h:Ljava/lang/String;

    invoke-virtual {p0, p1}, Li0/c;->u(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    if-ne p1, v0, :cond_3

    .line 21
    invoke-virtual {p0}, Li0/c;->L()V

    :cond_3
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
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

.method public final I(Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Li0/c;->h:Ljava/lang/String;

    const-string v1, ""

    if-nez v0, :cond_0

    .line 2
    iput-object v1, p0, Li0/c;->h:Ljava/lang/String;

    .line 3
    :cond_0
    iget-object v0, p0, Li0/c;->h:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v2, 0x400

    if-ne v0, v2, :cond_1

    .line 4
    iput-object v1, p0, Li0/c;->h:Ljava/lang/String;

    .line 5
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Li0/c;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Li0/c;->c0(Ljava/lang/String;)V

    .line 6
    iget v0, p0, Li0/c;->z:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_2

    const-string v0, "+"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "CX"

    .line 7
    invoke-virtual {p0, v0, p1}, Li0/c;->W(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public J(I)V
    .locals 2

    const/4 v0, 0x1

    if-nez p1, :cond_0

    .line 1
    iget v1, p0, Li0/c;->z:I

    if-ne v1, v0, :cond_0

    const-string p1, "CC"

    .line 2
    invoke-virtual {p0, p1}, Li0/c;->V(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    if-ne v0, p1, :cond_1

    .line 3
    iget v1, p0, Li0/c;->z:I

    if-eq v1, v0, :cond_1

    const-string p1, "CD"

    .line 4
    invoke-virtual {p0, p1}, Li0/c;->V(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x2

    if-ne v1, p1, :cond_3

    .line 5
    iget p1, p0, Li0/c;->z:I

    if-ne p1, v0, :cond_2

    const/4 p1, 0x0

    .line 6
    invoke-virtual {p0, p1}, Li0/c;->J(I)V

    goto :goto_0

    .line 7
    :cond_2
    invoke-virtual {p0, v0}, Li0/c;->J(I)V

    :cond_3
    :goto_0
    return-void
.end method

.method public K(Ljava/lang/String;)V
    .locals 4

    .line 1
    iget-object v0, p0, Li0/c;->s:Ljava/util/LinkedHashMap;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Li0/c;->s:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Li0/c$a;

    const-string v1, "BT"

    .line 3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "pauseCallTimer() "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    .line 4
    invoke-virtual {p1, v1}, Li0/c$a;->k(Z)V

    .line 5
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public L()V
    .locals 1

    const-string v0, "CE"

    .line 1
    invoke-virtual {p0, v0}, Li0/c;->V(Ljava/lang/String;)V

    return-void
.end method

.method public M()V
    .locals 1

    const-string v0, "PH"

    .line 1
    invoke-virtual {p0, v0}, Li0/c;->V(Ljava/lang/String;)V

    return-void
.end method

.method public N()V
    .locals 1

    const-string v0, "PJ"

    .line 1
    invoke-virtual {p0, v0}, Li0/c;->V(Ljava/lang/String;)V

    return-void
.end method

.method public O()V
    .locals 1

    const-string v0, "PI"

    .line 1
    invoke-virtual {p0, v0}, Li0/c;->V(Ljava/lang/String;)V

    return-void
.end method

.method public P()V
    .locals 1

    const-string v0, "CH"

    .line 1
    invoke-virtual {p0, v0}, Li0/c;->V(Ljava/lang/String;)V

    return-void
.end method

.method public Q(Ly/b;I)Z
    .locals 5

    .line 1
    invoke-static {}, Lh0/g;->Y2()Lh0/g;

    move-result-object v0

    invoke-virtual {v0}, Lbase/b;->L2()Lo1/x;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x1

    if-eqz p2, :cond_10

    if-eq p2, v0, :cond_f

    const/4 v2, 0x2

    if-eq p2, v2, :cond_e

    const/4 v3, 0x6

    if-eq p2, v3, :cond_d

    const/4 v3, 0x7

    if-eq p2, v3, :cond_c

    const/16 v3, 0x8

    if-eq p2, v3, :cond_b

    const/16 v3, 0xb

    if-eq p2, v3, :cond_9

    const/16 v3, 0xd

    if-eq p2, v3, :cond_8

    const/16 v3, 0x12

    if-eq p2, v3, :cond_7

    const/16 v3, 0x17

    if-eq p2, v3, :cond_6

    const/16 v3, 0x1a

    if-eq p2, v3, :cond_5

    const/16 v3, 0x33

    if-eq p2, v3, :cond_4

    const/16 v3, 0x1c

    if-eq p2, v3, :cond_3

    const/16 v3, 0x1d

    if-eq p2, v3, :cond_1

    packed-switch p2, :pswitch_data_0

    packed-switch p2, :pswitch_data_1

    goto/16 :goto_2

    :pswitch_0
    new-array v2, v0, [Ljava/lang/String;

    .line 2
    iget-object v3, p0, Li0/c;->i:Ljava/lang/String;

    aput-object v3, v2, v1

    invoke-virtual {p0, p1, p2, v2}, Li0/c;->E0(Ly/b;I[Ljava/lang/String;)V

    goto/16 :goto_2

    :pswitch_1
    new-array v2, v0, [I

    .line 3
    iget v3, p0, Li0/c;->A:I

    aput v3, v2, v1

    invoke-virtual {p0, p1, p2, v2}, Li0/c;->C0(Ly/b;I[I)V

    goto/16 :goto_2

    :pswitch_2
    new-array v2, v0, [I

    .line 4
    iget v3, p0, Li0/c;->z:I

    aput v3, v2, v1

    invoke-virtual {p0, p1, p2, v2}, Li0/c;->C0(Ly/b;I[I)V

    goto/16 :goto_2

    :pswitch_3
    new-array v2, v0, [Ljava/lang/String;

    .line 5
    iget-object v3, p0, Li0/c;->e:Ljava/lang/String;

    aput-object v3, v2, v1

    invoke-virtual {p0, p1, p2, v2}, Li0/c;->E0(Ly/b;I[Ljava/lang/String;)V

    goto/16 :goto_2

    :pswitch_4
    new-array v2, v0, [I

    .line 6
    iget v3, p0, Li0/c;->f:I

    aput v3, v2, v1

    invoke-virtual {p0, p1, p2, v2}, Li0/c;->C0(Ly/b;I[I)V

    goto/16 :goto_2

    :pswitch_5
    new-array v2, v0, [I

    .line 7
    iget v3, p0, Li0/c;->g:I

    aput v3, v2, v1

    invoke-virtual {p0, p1, p2, v2}, Li0/c;->C0(Ly/b;I[I)V

    goto/16 :goto_2

    .line 8
    :pswitch_6
    invoke-static {}, Lplugins/ZLink;->Y()Lplugins/ZLink;

    move-result-object v2

    invoke-virtual {v2}, Lplugins/ZLink;->d0()Z

    move-result v2

    if-nez v2, :cond_11

    invoke-static {}, Lh1/a;->d()Lh1/a;

    move-result-object v2

    invoke-virtual {v2}, Lh1/a;->j()Z

    move-result v2

    if-nez v2, :cond_11

    new-array v2, v0, [I

    .line 9
    iget-boolean v3, p0, Li0/c;->w:Z

    aput v3, v2, v1

    invoke-virtual {p0, p1, p2, v2}, Li0/c;->C0(Ly/b;I[I)V

    goto/16 :goto_2

    :cond_1
    new-array v3, v0, [I

    .line 10
    iget-boolean v4, p0, Li0/c;->t:Z

    if-eqz v4, :cond_2

    goto :goto_0

    :cond_2
    move v2, v0

    :goto_0
    aput v2, v3, v1

    invoke-virtual {p0, p1, p2, v3}, Li0/c;->C0(Ly/b;I[I)V

    goto/16 :goto_2

    :cond_3
    new-array v2, v0, [I

    .line 11
    iget v3, p0, Li0/c;->n:I

    aput v3, v2, v1

    invoke-virtual {p0, p1, p2, v2}, Li0/c;->C0(Ly/b;I[I)V

    goto/16 :goto_2

    :cond_4
    new-array v2, v0, [Ljava/lang/String;

    .line 12
    iget-object v3, p0, Li0/c;->m:Ljava/lang/String;

    aput-object v3, v2, v1

    invoke-virtual {p0, p1, p2, v2}, Li0/c;->E0(Ly/b;I[Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_5
    new-array v2, v0, [Ljava/lang/String;

    .line 13
    iget-object v3, p0, Li0/c;->l:Ljava/lang/String;

    aput-object v3, v2, v1

    invoke-virtual {p0, p1, p2, v2}, Li0/c;->E0(Ly/b;I[Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_6
    new-array v2, v0, [I

    .line 14
    iget v3, p0, Li0/c;->a:I

    aput v3, v2, v1

    invoke-virtual {p0, p1, p2, v2}, Li0/c;->C0(Ly/b;I[I)V

    goto/16 :goto_2

    :cond_7
    new-array v2, v0, [I

    .line 15
    iget-boolean v3, p0, Li0/c;->v:Z

    aput v3, v2, v1

    invoke-virtual {p0, p1, p2, v2}, Li0/c;->C0(Ly/b;I[I)V

    goto :goto_2

    :cond_8
    new-array v2, v0, [I

    .line 16
    iget-boolean v3, p0, Li0/c;->x:Z

    aput v3, v2, v1

    invoke-virtual {p0, p1, p2, v2}, Li0/c;->C0(Ly/b;I[I)V

    goto :goto_2

    .line 17
    :cond_9
    iget-object v2, p0, Li0/c;->s:Ljava/util/LinkedHashMap;

    monitor-enter v2

    .line 18
    :try_start_0
    iget-object p2, p0, Li0/c;->s:Ljava/util/LinkedHashMap;

    invoke-virtual {p2}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Li0/c$a;

    .line 19
    invoke-virtual {v1, p1}, Li0/c$a;->l(Ly/b;)V

    goto :goto_1

    .line 20
    :cond_a
    monitor-exit v2

    goto :goto_2

    :catchall_0
    move-exception p1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_b
    new-array v2, v0, [Ljava/lang/String;

    .line 21
    iget-object v3, p0, Li0/c;->h:Ljava/lang/String;

    aput-object v3, v2, v1

    invoke-virtual {p0, p1, p2, v2}, Li0/c;->E0(Ly/b;I[Ljava/lang/String;)V

    goto :goto_2

    :cond_c
    new-array v2, v0, [Ljava/lang/String;

    .line 22
    iget-object v3, p0, Li0/c;->d:Ljava/lang/String;

    aput-object v3, v2, v1

    invoke-virtual {p0, p1, p2, v2}, Li0/c;->E0(Ly/b;I[Ljava/lang/String;)V

    goto :goto_2

    :cond_d
    new-array v2, v0, [Ljava/lang/String;

    .line 23
    iget-object v3, p0, Li0/c;->c:Ljava/lang/String;

    aput-object v3, v2, v1

    invoke-virtual {p0, p1, p2, v2}, Li0/c;->E0(Ly/b;I[Ljava/lang/String;)V

    goto :goto_2

    :cond_e
    new-array v2, v0, [I

    .line 24
    iget v3, p0, Li0/c;->o:I

    aput v3, v2, v1

    invoke-virtual {p0, p1, p2, v2}, Li0/c;->C0(Ly/b;I[I)V

    goto :goto_2

    :cond_f
    new-array v2, v0, [Ljava/lang/String;

    .line 25
    iget-object v3, p0, Li0/c;->k:Ljava/lang/String;

    aput-object v3, v2, v1

    invoke-virtual {p0, p1, p2, v2}, Li0/c;->E0(Ly/b;I[Ljava/lang/String;)V

    goto :goto_2

    :cond_10
    new-array v2, v0, [Ljava/lang/String;

    .line 26
    iget-object v3, p0, Li0/c;->j:Ljava/lang/String;

    aput-object v3, v2, v1

    invoke-virtual {p0, p1, p2, v2}, Li0/c;->E0(Ly/b;I[Ljava/lang/String;)V

    :cond_11
    :goto_2
    return v0

    :pswitch_data_0
    .packed-switch 0x2b
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x3d
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public R()V
    .locals 1

    const-string v0, "CF"

    .line 1
    invoke-virtual {p0, v0}, Li0/c;->V(Ljava/lang/String;)V

    return-void
.end method

.method public S()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " == release Slave: index = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Li0/c;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " mac: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Li0/c;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BT"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "000000000000"

    .line 2
    invoke-virtual {p0, v0}, Li0/c;->f0(Ljava/lang/String;)V

    const-string v0, ""

    .line 3
    iput-object v0, p0, Li0/c;->d:Ljava/lang/String;

    .line 4
    iput-object v0, p0, Li0/c;->c:Ljava/lang/String;

    .line 5
    iput-object v0, p0, Li0/c;->b:Ljava/lang/String;

    return-void
.end method

.method public U(Ljava/lang/String;)V
    .locals 1

    const-string v0, "YG"

    .line 1
    invoke-virtual {p0, v0, p1}, Li0/c;->W(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public V(Ljava/lang/String;)V
    .locals 1

    const-string v0, ""

    .line 1
    invoke-virtual {p0, p1, v0}, Li0/c;->W(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public W(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-static {p2}, Lo1/s0;->t(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p2, ""

    .line 2
    :cond_0
    iget-object v0, p0, Li0/c;->y:Lj0/a;

    if-eqz v0, :cond_1

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Li0/c;->c:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lj0/a;->a(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public X(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Li0/c;->y:Lj0/a;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1}, Lj0/a;->b(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public Y(I)V
    .locals 3

    .line 1
    iget v0, p0, Li0/c;->A:I

    if-eq p1, v0, :cond_0

    .line 2
    iput p1, p0, Li0/c;->A:I

    const/16 v0, 0x3e

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput p1, v1, v2

    .line 3
    invoke-virtual {p0, v0, v1}, Li0/c;->z0(I[I)V

    :cond_0
    return-void
.end method

.method public Z(Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Li0/c;->m:Ljava/lang/String;

    invoke-static {p1, v0}, Lo1/s0;->j(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iput-object p1, p0, Li0/c;->m:Ljava/lang/String;

    const/16 v0, 0x33

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    .line 3
    invoke-virtual {p0, v0, v1}, Li0/c;->B0(I[Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public a(I)V
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 1
    iget p1, p0, Li0/c;->A:I

    if-ne p1, v0, :cond_0

    const-string p1, "CU"

    .line 2
    invoke-virtual {p0, p1}, Li0/c;->V(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public a0(I)V
    .locals 3

    .line 1
    iget v0, p0, Li0/c;->g:I

    if-eq p1, v0, :cond_0

    .line 2
    iput p1, p0, Li0/c;->g:I

    const/16 v0, 0x2c

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput p1, v1, v2

    .line 3
    invoke-virtual {p0, v0, v1}, Li0/c;->z0(I[I)V

    :cond_0
    return-void
.end method

.method public b()V
    .locals 1

    const-string v0, "CR"

    .line 1
    invoke-virtual {p0, v0}, Li0/c;->V(Ljava/lang/String;)V

    return-void
.end method

.method public b0(Z)V
    .locals 4

    .line 1
    iget-boolean v0, p0, Li0/c;->t:Z

    if-eq p1, v0, :cond_1

    .line 2
    iput-boolean p1, p0, Li0/c;->t:Z

    const/16 v0, 0x1d

    const/4 v1, 0x1

    new-array v2, v1, [I

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    const/4 v1, 0x2

    :cond_0
    aput v1, v2, v3

    .line 3
    invoke-virtual {p0, v0, v2}, Li0/c;->z0(I[I)V

    :cond_1
    return-void
.end method

.method public c()V
    .locals 1

    const-string v0, "CS"

    .line 1
    invoke-virtual {p0, v0}, Li0/c;->V(Ljava/lang/String;)V

    return-void
.end method

.method public c0(Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Li0/c;->h:Ljava/lang/String;

    invoke-static {p1, v0}, Lo1/s0;->j(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iput-object p1, p0, Li0/c;->h:Ljava/lang/String;

    const/16 v0, 0x8

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    .line 3
    invoke-virtual {p0, v0, v1}, Li0/c;->B0(I[Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public d()V
    .locals 1

    const-string v0, "CQ"

    .line 1
    invoke-virtual {p0, v0}, Li0/c;->V(Ljava/lang/String;)V

    return-void
.end method

.method public d0(I)V
    .locals 3

    .line 1
    iget v0, p0, Li0/c;->z:I

    if-eq p1, v0, :cond_0

    .line 2
    iput p1, p0, Li0/c;->z:I

    const/16 v0, 0x3d

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput p1, v1, v2

    .line 3
    invoke-virtual {p0, v0, v1}, Li0/c;->z0(I[I)V

    .line 4
    iget-object p1, p0, Li0/c;->y:Lj0/a;

    invoke-interface {p1}, Lj0/a;->c()V

    :cond_0
    return-void
.end method

.method public e()V
    .locals 1

    const-string v0, "MD"

    .line 1
    invoke-virtual {p0, v0}, Li0/c;->X(Ljava/lang/String;)V

    return-void
.end method

.method public e0(Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Li0/c;->b:Ljava/lang/String;

    invoke-static {p1, v0}, Lo1/s0;->j(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iput-object p1, p0, Li0/c;->b:Ljava/lang/String;

    const/4 p1, 0x6

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 3
    iget-object v2, p0, Li0/c;->c:Ljava/lang/String;

    aput-object v2, v0, v1

    invoke-virtual {p0, p1, v0}, Li0/c;->B0(I[Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .line 1
    instance-of v0, p1, Li0/c;

    if-eqz v0, :cond_1

    .line 2
    check-cast p1, Li0/c;

    .line 3
    iget-object v0, p0, Li0/c;->c:Ljava/lang/String;

    iget-object v1, p1, Li0/c;->c:Ljava/lang/String;

    invoke-static {v0, v1}, Lo1/s0;->j(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Li0/c;->b:Ljava/lang/String;

    iget-object p1, p1, Li0/c;->b:Ljava/lang/String;

    invoke-static {v0, p1}, Lo1/s0;->j(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1

    .line 4
    :cond_1
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public f()V
    .locals 1

    const-string v0, "MB"

    .line 1
    invoke-virtual {p0, v0}, Li0/c;->X(Ljava/lang/String;)V

    return-void
.end method

.method public f0(Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Li0/c;->c:Ljava/lang/String;

    invoke-static {v0, p1}, Lo1/s0;->j(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iput-object p1, p0, Li0/c;->c:Ljava/lang/String;

    const/4 v0, 0x6

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    .line 3
    invoke-virtual {p0, v0, v1}, Li0/c;->B0(I[Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public g()V
    .locals 1

    const-string v0, "MS"

    .line 1
    invoke-virtual {p0, v0}, Li0/c;->X(Ljava/lang/String;)V

    return-void
.end method

.method public g0(Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Li0/c;->r:Ljava/lang/String;

    invoke-static {p1, v0}, Lo1/s0;->j(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iput-object p1, p0, Li0/c;->r:Ljava/lang/String;

    const/16 v0, 0x31

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    .line 3
    invoke-virtual {p0, v0, v1}, Li0/c;->B0(I[Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public h()V
    .locals 1

    const-string v0, "MA"

    .line 1
    invoke-virtual {p0, v0}, Li0/c;->X(Ljava/lang/String;)V

    return-void
.end method

.method public h0(Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Li0/c;->l:Ljava/lang/String;

    invoke-static {p1, v0}, Lo1/s0;->j(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iput-object p1, p0, Li0/c;->l:Ljava/lang/String;

    const/16 v0, 0x1a

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    .line 3
    invoke-virtual {p0, v0, v1}, Li0/c;->B0(I[Ljava/lang/String;)V

    .line 4
    sget v0, Lu0/b;->D:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const-string v0, ""

    .line 5
    invoke-static {p1, v0}, Lu0/d;->J0(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public hashCode()I
    .locals 2

    .line 1
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    .line 2
    iget-object v1, p0, Li0/c;->c:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v0, v1

    .line 4
    :cond_0
    iget-object v1, p0, Li0/c;->b:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 5
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v0, v1

    :cond_1
    return v0
.end method

.method public i()V
    .locals 1

    const-string v0, "ME"

    .line 1
    invoke-virtual {p0, v0}, Li0/c;->X(Ljava/lang/String;)V

    return-void
.end method

.method public i0(Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Li0/c;->k:Ljava/lang/String;

    invoke-static {p1, v0}, Lo1/s0;->j(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iput-object p1, p0, Li0/c;->k:Ljava/lang/String;

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    .line 3
    invoke-virtual {p0, v0, v1}, Li0/c;->B0(I[Ljava/lang/String;)V

    .line 4
    sget v0, Lu0/b;->D:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 5
    invoke-static {p1}, Lu0/d;->K0(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public j()V
    .locals 1

    const-string v0, "MC"

    .line 1
    invoke-virtual {p0, v0}, Li0/c;->X(Ljava/lang/String;)V

    return-void
.end method

.method public j0(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Li0/c;->j:Ljava/lang/String;

    invoke-static {p1, v0}, Lo1/s0;->j(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iput-object p1, p0, Li0/c;->j:Ljava/lang/String;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 3
    invoke-virtual {p0, v1, v0}, Li0/c;->B0(I[Ljava/lang/String;)V

    .line 4
    sget v0, Lu0/b;->D:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 5
    invoke-static {p1}, Lu0/d;->L0(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public k(Ljava/lang/String;I)V
    .locals 5

    .line 1
    invoke-static {p1}, Lo1/s0;->t(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Li0/c;->s:Ljava/util/LinkedHashMap;

    monitor-enter v0

    const/4 v1, 0x5

    const/4 v2, 0x0

    if-eq p2, v1, :cond_2

    const/4 v1, 0x6

    if-ne p2, v1, :cond_1

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v1, 0x1

    :goto_1
    if-eqz v1, :cond_3

    .line 3
    :try_start_0
    iget-object v1, p0, Li0/c;->s:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, p1}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 4
    iget-object v1, p0, Li0/c;->s:Ljava/util/LinkedHashMap;

    new-instance v3, Li0/c$a;

    invoke-direct {v3, p0, p1}, Li0/c$a;-><init>(Li0/c;Ljava/lang/String;)V

    invoke-virtual {v1, p1, v3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    :cond_3
    iget-object v1, p0, Li0/c;->s:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Li0/c$a;

    const-string v1, "BT"

    .line 6
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "callTime() ==> hfpState : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_4

    .line 7
    invoke-virtual {p1, v2}, Li0/c$a;->k(Z)V

    .line 8
    invoke-virtual {p1, p2}, Li0/c$a;->i(I)V

    .line 9
    :cond_4
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public k0(Ljava/lang/String;)V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " last name: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Li0/c;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  to :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BT"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Li0/c;->d:Ljava/lang/String;

    invoke-static {p1, v0}, Lo1/s0;->j(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    iput-object p1, p0, Li0/c;->d:Ljava/lang/String;

    const/4 v0, 0x7

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    .line 4
    invoke-virtual {p0, v0, v1}, Li0/c;->B0(I[Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public l()V
    .locals 3

    .line 1
    iget-object v0, p0, Li0/c;->s:Ljava/util/LinkedHashMap;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Li0/c;->s:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Li0/c$a;

    .line 3
    invoke-static {v2}, Li0/c$a;->f(Li0/c$a;)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v1, p0, Li0/c;->s:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->clear()V

    .line 5
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public l0(Z)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Li0/c;->v:Z

    if-eq p1, v0, :cond_0

    .line 2
    iput-boolean p1, p0, Li0/c;->v:Z

    const/16 v0, 0x12

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput p1, v1, v2

    .line 3
    invoke-virtual {p0, v0, v1}, Li0/c;->z0(I[I)V

    :cond_0
    return-void
.end method

.method public m(I)V
    .locals 3

    const/4 v0, 0x1

    if-nez p1, :cond_0

    .line 1
    iget-object v1, p0, Li0/c;->h:Ljava/lang/String;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2
    iget-object p1, p0, Li0/c;->h:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v2, v0

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Li0/c;->c0(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    if-ne p1, v0, :cond_1

    const-string p1, ""

    .line 3
    invoke-virtual {p0, p1}, Li0/c;->c0(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public m0(Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Li0/c;->e:Ljava/lang/String;

    invoke-static {p1, v0}, Lo1/s0;->j(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iput-object p1, p0, Li0/c;->e:Ljava/lang/String;

    const/16 v0, 0x2e

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    .line 3
    invoke-virtual {p0, v0, v1}, Li0/c;->B0(I[Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public n()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0}, Li0/c;->Y(I)V

    const-string v0, ""

    .line 2
    invoke-virtual {p0, v0}, Li0/c;->i0(Ljava/lang/String;)V

    .line 3
    invoke-virtual {p0, v0}, Li0/c;->j0(Ljava/lang/String;)V

    .line 4
    invoke-virtual {p0, v0}, Li0/c;->h0(Ljava/lang/String;)V

    .line 5
    invoke-virtual {p0, v0}, Li0/c;->Z(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 6
    invoke-virtual {p0, v0}, Li0/c;->o0(I)V

    .line 7
    invoke-virtual {p0, v0}, Li0/c;->n0(I)V

    .line 8
    invoke-virtual {p0, v0}, Li0/c;->p0(I)V

    .line 9
    invoke-virtual {p0, v0}, Li0/c;->t0(I)V

    return-void
.end method

.method public n0(I)V
    .locals 3

    .line 1
    iget v0, p0, Li0/c;->n:I

    if-eq p1, v0, :cond_0

    .line 2
    iput p1, p0, Li0/c;->n:I

    const/16 v0, 0x1c

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput p1, v1, v2

    .line 3
    invoke-virtual {p0, v0, v1}, Li0/c;->z0(I[I)V

    .line 4
    sget v0, Lu0/b;->D:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    if-ltz p1, :cond_0

    .line 5
    iget v0, p0, Li0/c;->o:I

    if-lt v0, p1, :cond_0

    .line 6
    invoke-static {p1, v0}, Lu0/d;->A2(II)V

    :cond_0
    return-void
.end method

.method public o(Ljava/lang/String;)V
    .locals 4

    .line 1
    iget-object v0, p0, Li0/c;->s:Ljava/util/LinkedHashMap;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Li0/c;->s:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, p1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Li0/c$a;

    const-string v1, "BT"

    .line 3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "clearCallTimer() "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    .line 4
    invoke-static {p1}, Li0/c$a;->f(Li0/c$a;)V

    .line 5
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public o0(I)V
    .locals 3

    .line 1
    iget v0, p0, Li0/c;->o:I

    if-eq p1, v0, :cond_0

    .line 2
    iput p1, p0, Li0/c;->o:I

    const/4 v0, 0x2

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput p1, v1, v2

    .line 3
    invoke-virtual {p0, v0, v1}, Li0/c;->z0(I[I)V

    :cond_0
    return-void
.end method

.method public p()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Li0/c;->l()V

    const-string v0, ""

    .line 2
    invoke-virtual {p0, v0}, Li0/c;->k0(Ljava/lang/String;)V

    .line 3
    invoke-virtual {p0, v0}, Li0/c;->m0(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 4
    invoke-virtual {p0, v1}, Li0/c;->l0(Z)V

    .line 5
    invoke-virtual {p0, v1}, Li0/c;->r0(Z)V

    .line 6
    invoke-virtual {p0, v0}, Li0/c;->c0(Ljava/lang/String;)V

    .line 7
    invoke-virtual {p0, v0}, Li0/c;->x0(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 8
    invoke-virtual {p0, v0}, Li0/c;->d0(I)V

    .line 9
    invoke-virtual {p0, v1}, Li0/c;->s0(I)V

    .line 10
    invoke-virtual {p0, v1}, Li0/c;->a0(I)V

    .line 11
    invoke-virtual {p0, v1}, Li0/c;->v0(I)V

    .line 12
    invoke-virtual {p0, v1}, Li0/c;->w0(Z)V

    return-void
.end method

.method public p0(I)V
    .locals 3

    .line 1
    iget v0, p0, Li0/c;->p:I

    if-eq p1, v0, :cond_0

    .line 2
    iput p1, p0, Li0/c;->p:I

    const/4 v0, 0x3

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput p1, v1, v2

    .line 3
    invoke-virtual {p0, v0, v1}, Li0/c;->z0(I[I)V

    :cond_0
    return-void
.end method

.method public q()V
    .locals 6

    .line 1
    iget-object v0, p0, Li0/c;->s:Ljava/util/LinkedHashMap;

    monitor-enter v0

    .line 2
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3
    iget-object v2, p0, Li0/c;->s:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 4
    iget-object v4, p0, Li0/c;->h:Ljava/lang/String;

    invoke-static {v3, v4}, Lo1/s0;->j(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 5
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 6
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 7
    iget-object v3, p0, Li0/c;->s:Ljava/util/LinkedHashMap;

    invoke-virtual {v3, v2}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Li0/c$a;

    const-string v3, "BT"

    .line 8
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "clearInvalidCallTimer() clear()"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v2, :cond_2

    .line 9
    invoke-static {v2}, Li0/c$a;->f(Li0/c$a;)V

    goto :goto_1

    .line 10
    :cond_3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public q0(Z)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Li0/c;->x:Z

    if-eq v0, p1, :cond_0

    .line 2
    iput-boolean p1, p0, Li0/c;->x:Z

    const/16 v0, 0xd

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput p1, v1, v2

    .line 3
    invoke-virtual {p0, v0, v1}, Li0/c;->z0(I[I)V

    .line 4
    iget-boolean p1, p0, Li0/c;->x:Z

    invoke-static {p1}, Lh0/e;->l(I)V

    :cond_0
    return-void
.end method

.method public r()V
    .locals 0

    return-void
.end method

.method public r0(Z)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Li0/c;->u:Z

    if-eq p1, v0, :cond_1

    .line 2
    iput-boolean p1, p0, Li0/c;->u:Z

    const/16 v0, 0x1d

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    const/4 p1, 0x4

    goto :goto_0

    :cond_0
    const/4 p1, 0x3

    :goto_0
    aput p1, v1, v2

    .line 3
    invoke-virtual {p0, v0, v1}, Li0/c;->z0(I[I)V

    :cond_1
    return-void
.end method

.method public s(Ljava/lang/String;)V
    .locals 1

    const-string v0, "CV"

    .line 1
    invoke-virtual {p0, v0, p1}, Li0/c;->W(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public s0(I)V
    .locals 3

    .line 1
    iget v0, p0, Li0/c;->f:I

    if-eq p1, v0, :cond_0

    .line 2
    iput p1, p0, Li0/c;->f:I

    const/16 v0, 0x2d

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput p1, v1, v2

    .line 3
    invoke-virtual {p0, v0, v1}, Li0/c;->z0(I[I)V

    :cond_0
    return-void
.end method

.method public t()V
    .locals 1

    const-string v0, "CV0"

    .line 1
    invoke-virtual {p0, v0}, Li0/c;->V(Ljava/lang/String;)V

    return-void
.end method

.method public t0(I)V
    .locals 3

    .line 1
    iget v0, p0, Li0/c;->q:I

    if-eq p1, v0, :cond_0

    .line 2
    iput p1, p0, Li0/c;->q:I

    const/4 v0, 0x4

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput p1, v1, v2

    .line 3
    invoke-virtual {p0, v0, v1}, Li0/c;->z0(I[I)V

    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SlaveDevice: [ name:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Li0/c;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " mac:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Li0/c;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " index:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Li0/c;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " hfpState:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Li0/c;->z:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " a2dpState:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Li0/c;->A:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " callingNumber:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Li0/c;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " waitingNumber:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Li0/c;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " battery:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Li0/c;->g:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " signalLevel"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Li0/c;->f:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public u(Ljava/lang/String;)V
    .locals 1

    const-string v0, "CW"

    .line 1
    invoke-virtual {p0, v0, p1}, Li0/c;->W(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public u0(Lj0/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Li0/c;->y:Lj0/a;

    return-void
.end method

.method public v()V
    .locals 1

    const-string v0, "PK"

    .line 1
    invoke-virtual {p0, v0}, Li0/c;->V(Ljava/lang/String;)V

    return-void
.end method

.method public v0(I)V
    .locals 0

    .line 1
    iput p1, p0, Li0/c;->a:I

    return-void
.end method

.method public w()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Li0/c;->h:Ljava/lang/String;

    return-object v0
.end method

.method public w0(Z)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Li0/c;->w:Z

    if-eq p1, v0, :cond_0

    .line 2
    iput-boolean p1, p0, Li0/c;->w:Z

    const/16 v0, 0x2b

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput p1, v1, v2

    .line 3
    invoke-virtual {p0, v0, v1}, Li0/c;->z0(I[I)V

    :cond_0
    return-void
.end method

.method public x()I
    .locals 1

    .line 1
    iget v0, p0, Li0/c;->z:I

    return v0
.end method

.method public x0(Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Li0/c;->i:Ljava/lang/String;

    invoke-static {p1, v0}, Lo1/s0;->j(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iput-object p1, p0, Li0/c;->i:Ljava/lang/String;

    const/16 v0, 0x3f

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    .line 3
    invoke-virtual {p0, v0, v1}, Li0/c;->B0(I[Ljava/lang/String;)V

    .line 4
    invoke-static {p1}, Lo1/s0;->t(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 5
    invoke-virtual {p0, p1}, Li0/c;->K(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public y()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Li0/c;->c:Ljava/lang/String;

    return-object v0
.end method

.method public y0()V
    .locals 1

    const-string v0, "PS"

    .line 1
    invoke-virtual {p0, v0}, Li0/c;->V(Ljava/lang/String;)V

    return-void
.end method

.method public z()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Li0/c;->i:Ljava/lang/String;

    return-object v0
.end method

.method public varargs z0(I[I)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, p2, v0}, Li0/c;->A0(I[I[Ljava/lang/String;)V

    return-void
.end method
