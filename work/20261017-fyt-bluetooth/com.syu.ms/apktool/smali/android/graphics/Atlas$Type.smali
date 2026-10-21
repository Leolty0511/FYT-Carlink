.class public final enum Landroid/graphics/Atlas$Type;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/Atlas;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/graphics/Atlas$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/graphics/Atlas$Type;

.field public static final enum SliceLongAxis:Landroid/graphics/Atlas$Type;

.field public static final enum SliceMaxArea:Landroid/graphics/Atlas$Type;

.field public static final enum SliceMinArea:Landroid/graphics/Atlas$Type;

.field public static final enum SliceShortAxis:Landroid/graphics/Atlas$Type;


# direct methods
.method public static constructor <clinit>()V
    .locals 9

    .line 1
    new-instance v0, Landroid/graphics/Atlas$Type;

    const-string v1, "SliceMinArea"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/graphics/Atlas$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/graphics/Atlas$Type;->SliceMinArea:Landroid/graphics/Atlas$Type;

    .line 2
    new-instance v1, Landroid/graphics/Atlas$Type;

    const-string v3, "SliceMaxArea"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Landroid/graphics/Atlas$Type;-><init>(Ljava/lang/String;I)V

    sput-object v1, Landroid/graphics/Atlas$Type;->SliceMaxArea:Landroid/graphics/Atlas$Type;

    .line 3
    new-instance v3, Landroid/graphics/Atlas$Type;

    const-string v5, "SliceShortAxis"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Landroid/graphics/Atlas$Type;-><init>(Ljava/lang/String;I)V

    sput-object v3, Landroid/graphics/Atlas$Type;->SliceShortAxis:Landroid/graphics/Atlas$Type;

    .line 4
    new-instance v5, Landroid/graphics/Atlas$Type;

    const-string v7, "SliceLongAxis"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Landroid/graphics/Atlas$Type;-><init>(Ljava/lang/String;I)V

    sput-object v5, Landroid/graphics/Atlas$Type;->SliceLongAxis:Landroid/graphics/Atlas$Type;

    const/4 v7, 0x4

    new-array v7, v7, [Landroid/graphics/Atlas$Type;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    .line 5
    sput-object v7, Landroid/graphics/Atlas$Type;->$VALUES:[Landroid/graphics/Atlas$Type;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/graphics/Atlas$Type;
    .locals 1

    .line 1
    const-class v0, Landroid/graphics/Atlas$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Landroid/graphics/Atlas$Type;

    return-object p0
.end method

.method public static values()[Landroid/graphics/Atlas$Type;
    .locals 1

    .line 1
    sget-object v0, Landroid/graphics/Atlas$Type;->$VALUES:[Landroid/graphics/Atlas$Type;

    invoke-virtual {v0}, [Landroid/graphics/Atlas$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/graphics/Atlas$Type;

    return-object v0
.end method
