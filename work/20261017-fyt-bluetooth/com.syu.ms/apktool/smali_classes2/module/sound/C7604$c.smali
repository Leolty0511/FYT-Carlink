.class public Lmodule/sound/C7604$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmodule/sound/C7604;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "c"
.end annotation


# instance fields
.field public final synthetic a:Lmodule/sound/C7604;


# direct methods
.method public constructor <init>(Lmodule/sound/C7604;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lmodule/sound/C7604$c;->a:Lmodule/sound/C7604;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(III)I
    .locals 0

    add-int/2addr p1, p2

    sub-int/2addr p1, p3

    shl-int/lit8 p1, p1, 0x8

    return p1
.end method
