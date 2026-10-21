.class public final enum Landroid/view/ViewDebug$RecyclerTraceType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/ViewDebug;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "RecyclerTraceType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/view/ViewDebug$RecyclerTraceType;",
        ">;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/view/ViewDebug$RecyclerTraceType;

.field public static final enum BIND_VIEW:Landroid/view/ViewDebug$RecyclerTraceType;

.field public static final enum MOVE_FROM_ACTIVE_TO_SCRAP_HEAP:Landroid/view/ViewDebug$RecyclerTraceType;

.field public static final enum MOVE_TO_SCRAP_HEAP:Landroid/view/ViewDebug$RecyclerTraceType;

.field public static final enum NEW_VIEW:Landroid/view/ViewDebug$RecyclerTraceType;

.field public static final enum RECYCLE_FROM_ACTIVE_HEAP:Landroid/view/ViewDebug$RecyclerTraceType;

.field public static final enum RECYCLE_FROM_SCRAP_HEAP:Landroid/view/ViewDebug$RecyclerTraceType;


# direct methods
.method public static constructor <clinit>()V
    .locals 13

    .line 1
    new-instance v0, Landroid/view/ViewDebug$RecyclerTraceType;

    const-string v1, "NEW_VIEW"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/view/ViewDebug$RecyclerTraceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/view/ViewDebug$RecyclerTraceType;->NEW_VIEW:Landroid/view/ViewDebug$RecyclerTraceType;

    .line 2
    new-instance v1, Landroid/view/ViewDebug$RecyclerTraceType;

    const-string v3, "BIND_VIEW"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Landroid/view/ViewDebug$RecyclerTraceType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Landroid/view/ViewDebug$RecyclerTraceType;->BIND_VIEW:Landroid/view/ViewDebug$RecyclerTraceType;

    .line 3
    new-instance v3, Landroid/view/ViewDebug$RecyclerTraceType;

    const-string v5, "RECYCLE_FROM_ACTIVE_HEAP"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Landroid/view/ViewDebug$RecyclerTraceType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Landroid/view/ViewDebug$RecyclerTraceType;->RECYCLE_FROM_ACTIVE_HEAP:Landroid/view/ViewDebug$RecyclerTraceType;

    .line 4
    new-instance v5, Landroid/view/ViewDebug$RecyclerTraceType;

    const-string v7, "RECYCLE_FROM_SCRAP_HEAP"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Landroid/view/ViewDebug$RecyclerTraceType;-><init>(Ljava/lang/String;I)V

    sput-object v5, Landroid/view/ViewDebug$RecyclerTraceType;->RECYCLE_FROM_SCRAP_HEAP:Landroid/view/ViewDebug$RecyclerTraceType;

    .line 5
    new-instance v7, Landroid/view/ViewDebug$RecyclerTraceType;

    const-string v9, "MOVE_TO_SCRAP_HEAP"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Landroid/view/ViewDebug$RecyclerTraceType;-><init>(Ljava/lang/String;I)V

    sput-object v7, Landroid/view/ViewDebug$RecyclerTraceType;->MOVE_TO_SCRAP_HEAP:Landroid/view/ViewDebug$RecyclerTraceType;

    .line 6
    new-instance v9, Landroid/view/ViewDebug$RecyclerTraceType;

    const-string v11, "MOVE_FROM_ACTIVE_TO_SCRAP_HEAP"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Landroid/view/ViewDebug$RecyclerTraceType;-><init>(Ljava/lang/String;I)V

    sput-object v9, Landroid/view/ViewDebug$RecyclerTraceType;->MOVE_FROM_ACTIVE_TO_SCRAP_HEAP:Landroid/view/ViewDebug$RecyclerTraceType;

    const/4 v11, 0x6

    new-array v11, v11, [Landroid/view/ViewDebug$RecyclerTraceType;

    aput-object v0, v11, v2

    aput-object v1, v11, v4

    aput-object v3, v11, v6

    aput-object v5, v11, v8

    aput-object v7, v11, v10

    aput-object v9, v11, v12

    .line 7
    sput-object v11, Landroid/view/ViewDebug$RecyclerTraceType;->$VALUES:[Landroid/view/ViewDebug$RecyclerTraceType;

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

.method public static valueOf(Ljava/lang/String;)Landroid/view/ViewDebug$RecyclerTraceType;
    .locals 1

    .line 1
    const-class v0, Landroid/view/ViewDebug$RecyclerTraceType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Landroid/view/ViewDebug$RecyclerTraceType;

    return-object p0
.end method

.method public static values()[Landroid/view/ViewDebug$RecyclerTraceType;
    .locals 1

    .line 1
    sget-object v0, Landroid/view/ViewDebug$RecyclerTraceType;->$VALUES:[Landroid/view/ViewDebug$RecyclerTraceType;

    invoke-virtual {v0}, [Landroid/view/ViewDebug$RecyclerTraceType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/view/ViewDebug$RecyclerTraceType;

    return-object v0
.end method
