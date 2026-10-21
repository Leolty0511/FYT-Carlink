.class public Lmodule/sound/C7738NOR_QUALCOMM$i;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmodule/sound/C7738NOR_QUALCOMM;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "i"
.end annotation


# instance fields
.field public final synthetic a:Lmodule/sound/C7738NOR_QUALCOMM;


# direct methods
.method public constructor <init>(Lmodule/sound/C7738NOR_QUALCOMM;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lmodule/sound/C7738NOR_QUALCOMM$i;->a:Lmodule/sound/C7738NOR_QUALCOMM;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)I
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x2

    :goto_0
    mul-int/lit8 p1, p1, 0x10

    return p1
.end method
