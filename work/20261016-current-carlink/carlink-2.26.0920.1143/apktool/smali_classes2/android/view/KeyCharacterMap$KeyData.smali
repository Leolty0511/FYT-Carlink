.class public Landroid/view/KeyCharacterMap$KeyData;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/KeyCharacterMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "KeyData"
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final META_LENGTH:I = 0x4


# instance fields
.field public displayLabel:C

.field public meta:[C

.field public number:C


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x4

    .line 5
    new-array v0, v0, [C

    .line 6
    .line 7
    iput-object v0, p0, Landroid/view/KeyCharacterMap$KeyData;->meta:[C

    .line 8
    .line 9
    return-void
.end method
