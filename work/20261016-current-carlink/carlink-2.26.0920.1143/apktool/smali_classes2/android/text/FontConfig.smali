.class public final Landroid/text/FontConfig;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/text/FontConfig$Family;,
        Landroid/text/FontConfig$Alias;,
        Landroid/text/FontConfig$Font;
    }
.end annotation


# instance fields
.field private final mAliases:[Landroid/text/FontConfig$Alias;

.field private final mFamilies:[Landroid/text/FontConfig$Family;


# direct methods
.method public constructor <init>([Landroid/text/FontConfig$Family;[Landroid/text/FontConfig$Alias;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroid/text/FontConfig;->mFamilies:[Landroid/text/FontConfig$Family;

    .line 5
    .line 6
    iput-object p2, p0, Landroid/text/FontConfig;->mAliases:[Landroid/text/FontConfig$Alias;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public getAliases()[Landroid/text/FontConfig$Alias;
    .locals 1

    iget-object v0, p0, Landroid/text/FontConfig;->mAliases:[Landroid/text/FontConfig$Alias;

    return-object v0
.end method

.method public getFamilies()[Landroid/text/FontConfig$Family;
    .locals 1

    iget-object v0, p0, Landroid/text/FontConfig;->mFamilies:[Landroid/text/FontConfig$Family;

    return-object v0
.end method
