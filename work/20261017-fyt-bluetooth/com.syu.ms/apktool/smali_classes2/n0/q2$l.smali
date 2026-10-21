.class public Ln0/q2$l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc/f$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ln0/q2;->S2()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ln0/q2;


# direct methods
.method public constructor <init>(Ln0/q2;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ln0/q2$l;->a:Ln0/q2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    const/4 v0, 0x3

    new-array v0, v0, [I

    .line 1
    fill-array-data v0, :array_0

    invoke-static {v0}, Lz/k;->s([I)V

    const/4 v0, 0x1

    return v0

    nop

    :array_0
    .array-data 4
        0x1
        0x0
        0x7a
    .end array-data
.end method
