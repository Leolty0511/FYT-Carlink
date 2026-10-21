.class public final Landroid/text/FontConfig$Family;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/text/FontConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Family"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/text/FontConfig$Family$Variant;
    }
.end annotation


# static fields
.field public static final VARIANT_COMPACT:I = 0x1

.field public static final VARIANT_DEFAULT:I = 0x0

.field public static final VARIANT_ELEGANT:I = 0x2


# instance fields
.field private final mFonts:[Landroid/text/FontConfig$Font;

.field private final mLanguage:Ljava/lang/String;

.field private final mName:Ljava/lang/String;

.field private final mVariant:I


# direct methods
.method public constructor <init>(Ljava/lang/String;[Landroid/text/FontConfig$Font;Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroid/text/FontConfig$Family;->mName:Ljava/lang/String;

    .line 5
    .line 6
    iput-object p2, p0, Landroid/text/FontConfig$Family;->mFonts:[Landroid/text/FontConfig$Font;

    .line 7
    .line 8
    iput-object p3, p0, Landroid/text/FontConfig$Family;->mLanguage:Ljava/lang/String;

    .line 9
    .line 10
    iput p4, p0, Landroid/text/FontConfig$Family;->mVariant:I

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public getFonts()[Landroid/text/FontConfig$Font;
    .locals 1

    iget-object v0, p0, Landroid/text/FontConfig$Family;->mFonts:[Landroid/text/FontConfig$Font;

    return-object v0
.end method

.method public getLanguage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/text/FontConfig$Family;->mLanguage:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/text/FontConfig$Family;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getVariant()I
    .locals 1

    iget v0, p0, Landroid/text/FontConfig$Family;->mVariant:I

    return v0
.end method
